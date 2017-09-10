require 'hyalite'
require 'opal/drb'
require 'opal-parser'
require 'corelib/marshal'
require 'base64'

class AppView
  include Hyalite::Component

  state :output, []

  def setup_druby
    output = @state.output
    output << "> remote = DRbObject.new_with_uri('ws://127.0.0.1:1234')"

    @remote = DRb::DRbObject.new_with_uri('ws://127.0.0.1:1234')
    set_state(output: output)
  end

  def remote_call
    output = @state.output
    output << "> remote.call"
    set_state(output: output)
  end

  class Collector
    attr_reader :str

    def initialize
      @str = ""
    end

    def bind
      binding
    end

    def print(str)
      return unless str
      @str += str
    end

    def puts(str = '')
      @str += "\n" + str
    end
  end

  def get_quine
    output = @state.output
    @remote.call.then do |res|
      co = Collector.new
      co.instance_eval(res)
      output << co.str
      set_state(output: output)
    end
  end

  def next_state
    m = Proc.new do
      if @count < @states.count
        self.method(@states[@count]).call
        @count += 1
      end
    end

    interval = `setInterval(m, 3000)`
  end

  after_mount do
    @count = 0
    @states = %i(setup_druby remote_call get_quine)
  end

  def render
    next_state

    output = @state.output
    div {
      output.each do |line|
        pre(nil, line)
      end
    }
  end
end
Hyalite.render(Hyalite.create_element(AppView), $document['.content'])
