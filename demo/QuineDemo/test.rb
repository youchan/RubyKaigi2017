class Collector
  attr_reader :str
  def initialize
    @str = ""
  end

  def bind
    binding
  end

  def print(str)
    @str += str
  end
end

co = Collector.new

#eval("print('abc')", co.bind)
co.instance_eval("print('def')")

puts ">>>>>>>>>>>>>>"
puts co.str
