class Gibier::Page0 < Gibier::PageBase
def header
  h1(nil, "dRuby on Browser")
end

def content
  [].tap do |children|
      children << p({className:"author"}, "Yoh Osaki a.k.a @youchan")
      children << p({className:"icon"}, p({class:""}, img({src:"#{Gibier.assets_path}/images/youchan.jpg"}, "")))
  end
end
end

class Gibier::Page1 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"huge"}, "RejectKaigi")
  end
end
end

class Gibier::Page2 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/rejectkaigi.jpg"}, "")))
  end
end
end

class Gibier::Page3 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, "I was ",strong(nil, "rejected")," my CFP: ",strong(nil, "\"RejectKaigi\""),", so I was talking about ",strong(nil, "RejectKaigi")," on ",strong(nil, "RejectKaigi"))
  end
end
end

class Gibier::Page4 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "This is ",strong(nil, "Self-mention"))
  end
end
end

class Gibier::Page5 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"huge"}, "Quine")
  end
end
end

class Gibier::Page6 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/quine.jpg"}, "")))
  end
end
end

class Gibier::Page7 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, strong(nil, "dRuby on Browser"))
  end
end
end

class Gibier::Page8 < Gibier::PageBase
def header
  h2(nil, "Who am I?")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Yoh Osaki (@youchan)"),
                    li(nil, "Ubiregi inc."),
                    li(nil, "http://github.com/youchan/hyalite"),
                    li(nil, "http://github.com/youchan/menilite")
      )
  end
end
end

class Gibier::Page9 < Gibier::PageBase
def header
  h2(nil, "\"Writing web application in Ruby\"")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/RubyKaigi2015.png"}, "")))
  end
end
end

class Gibier::Page10 < Gibier::PageBase
def header
  h2(nil, "Opal")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Web front end programming in Ruby is good!"),
                  li(nil, a({href:"https://medium.com/@richardeng/javascript-is-the-donald-trump-of-the-it-industry-376ffdda774", target:"_blank"}, "JavaScript is the Donald Trump of the IT Industry")),
                  ul(nil,
                    li(nil, "Donald Trump is puerile, arrogant, ignorant, vindictive, delusional, and egotistical."),
                    li(nil, "JavaScript is riddled with warts and internal inconsistencies.")
      )
      )
  end
end
end

class Gibier::Page11 < Gibier::PageBase
def header
  h2(nil, "Hyalite")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "React-like virtual DOM implementation in Ruby.")
      )
  end
end
end

class Gibier::Page12 < Gibier::PageBase
def header
  h2(nil, "\"Isomorphic web programming in Ruby\"")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/RubyKaigi2016.png"}, "")))
  end
end
end

class Gibier::Page13 < Gibier::PageBase
def header
  h2(nil, "Isomorphic programming")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "node.js ?"),
                    li(nil, "I don't want to write javascript."),
                    li(nil, "We can write in Ruby both on the browser and the server-side!")
      )
  end
end
end

class Gibier::Page14 < Gibier::PageBase
def header
  h2(nil, "Menilite")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Shares the code for models on the browser and the server-side."),
                    li(nil, "Object marshalling"),
                    li(nil, "Integration with ActiveRecord")
      )
  end
end
end

class Gibier::Page15 < Gibier::PageBase
def header
  h2(nil, "\"dRuby on Browser\"")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/RubyKaigi2017.png"}, "")))
  end
end
end

class Gibier::Page16 < Gibier::PageBase
def header
  h2(nil, "drb-websocket")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "dRuby protocol implementation with WebSocket")
      )
  end
end
end

class Gibier::Page17 < Gibier::PageBase
def header
  h2(nil, "dRuby protocol")
end

def content
  [].tap do |children|
  end
end
end

class Gibier::Page18 < Gibier::PageBase
def header
  h2(nil, "opal-drb")
end

def content
  [].tap do |children|
  end
end
end

class Gibier::Page19 < Gibier::PageBase
def header
  h2(nil, "Asynchronous")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "It is forced asynchronous process with JavaScript."),
                    li(nil, "`DRbObject` returns `Promise`.")
      )
  end
end
end

class Gibier::Page20 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/fuck.png"}, "")))
  end
end
end

class Gibier::Page21 < Gibier::PageBase
def header
  h2(nil, "Advantage of dRuby on Browser")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "dRuby provides transparent access to the server-side objects."),
                    li(nil, "The server-side objects are possible to share between different browsers."),
                    li(nil, "No needs to declare any interfaces.")
      )
  end
end
end

class Gibier::Page22 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "Demo or Die")
  end
end
end

class Gibier::Page23 < Gibier::PageBase
def header
  h2(nil, "Conclusion")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "I introduced the gems drb-websocket and opal-drb for realize dRuby on Browser."),
                    li(nil, "It has advantages for cooperative web application."),
                    li(nil, "I demonstarated Kanban application as example for the cooperative web application.")
      )
  end
end
end

Gibier.page_count = 24
Gibier.title = "dRuby on Browser"
