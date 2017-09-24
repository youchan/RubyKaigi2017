module Gibier
  class PageBase
    include Hyalite::Component
    include Hyalite::Component::ShortHand

    def initialize
      @height = 0
    end

    def page_class_name
      "page_#{@props[:page_number]}"
    end

    def style
      {top: @state[:top]}.merge(@props[:visible] ? {display: 'block'} : {display: 'none'})
    end

    def header
      nil
    end

    def content
      nil
    end

    def render
      section({class: "page #{page_class_name}", style: style}, header, content)
    end
  end
end
