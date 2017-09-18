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
def header
  h2(nil, "Sponsor")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"ubiregi"}, img({src:"#{Gibier.assets_path}/images/ubiregi.png"}, "")))
  end
end
end

class Gibier::Page2 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/rejectkaigi.png"}, "")))
  end
end
end

class Gibier::Page3 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/rejectkaigi.jpg"}, "")))
  end
end
end

class Gibier::Page4 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, "I was ",strong(nil, "rejected")," my CFP: ",strong(nil, "\"RejectKaigi\""),", so I was talking about ",strong(nil, "RejectKaigi")," on ",strong(nil, "RejectKaigi"))
  end
end
end

class Gibier::Page5 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "This is ",strong(nil, "Self-mention"))
      children << p({className:"large"}, "自己言及")
  end
end
end

class Gibier::Page6 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"huge"}, "Quine")
  end
end
end

class Gibier::Page7 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/quine.jpg"}, "")))
  end
end
end

class Gibier::Page8 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, strong(nil, "dRuby on Browser"))
  end
end
end

class Gibier::Page9 < Gibier::PageBase
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

class Gibier::Page10 < Gibier::PageBase
def header
  h2(nil, "Book")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"book"}, img({src:"#{Gibier.assets_path}/images/obnou.jpg"}, "")))
      children << h4(nil, "ジュンク堂ブースにてサイン会します")
  end
end
end

class Gibier::Page11 < Gibier::PageBase
def header
  h2(nil, "\"Writing web application in Ruby\"")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/RubyKaigi2015.png"}, "")))
  end
end
end

class Gibier::Page12 < Gibier::PageBase
def header
  h2(nil, "Opal")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Ruby to JavaScript source code compiler"),
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

class Gibier::Page13 < Gibier::PageBase
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

class Gibier::Page14 < Gibier::PageBase
def header
  h2(nil, "\"Isomorphic web programming in Ruby\"")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/RubyKaigi2016.png"}, "")))
  end
end
end

class Gibier::Page15 < Gibier::PageBase
def header
  h2(nil, "Isomorphic programming")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "node.js ?(Meteo, Server side rendering with React)"),
                    li(nil, "I don't want to write javascript."),
                    li(nil, "We can write in Ruby both on the browser and the server-side!")
      )
  end
end
end

class Gibier::Page16 < Gibier::PageBase
def header
  h2(nil, "Menilite")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Shares the code for models on the browser and the server-side."),
                    li(nil, "Transparency access by object marshalling."),
                    li(nil, "No need to write your API code."),
                    li(nil, "Integration with ActiveRecord")
      )
  end
end
end

class Gibier::Page17 < Gibier::PageBase
def header
  h2(nil, "\"dRuby on Browser\"")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/RubyKaigi2017.png"}, "")))
  end
end
end

class Gibier::Page18 < Gibier::PageBase
def header
  h2(nil, "dRuby")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Distributed objects system in Ruby"),
                    li(nil, "Standard attached library"),
                    li(nil, "No need interface description such as IDL")
      )
  end
end
end

class Gibier::Page19 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/seki.png"}, "")))
  end
end
end

class Gibier::Page20 < Gibier::PageBase
def header
  h2(nil, "Requirements for dRuby on Browser")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "WebSocket protocol plugin for dRuby."),
                    li(nil, "dRuby client on Browser(by Opal).")
      )
  end
end
end

class Gibier::Page21 < Gibier::PageBase
def header
  h2(nil, "Requirements for dRuby on Browser")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "WebSocket protocol plugin for dRuby."),
                  ul(nil,
                    li(nil, strong(nil, "drb-websocket"))
      ),
                  li(nil, "dRuby client on Browser(by Opal)."),
                  ul(nil,
                    li(nil, strong(nil, "opal-drb"))
      )
      )
  end
end
end

class Gibier::Page22 < Gibier::PageBase
def header
  h2(nil, "drb-websocket")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "WebSocket protocol plugin for dRuby."),
                    li(nil, "Using ",strong(nil, "faye-websocket")),
                    li(nil, "Standalone mode or Rack middleware mode")
      )
  end
end
end

class Gibier::Page23 < Gibier::PageBase
def header
  h2(nil, "Rack middleware mode")
end

def content
  [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5
6
7</pre></td><td class="code"><pre><span class="n">app</span> <span class="o">=</span> <span class="no">Rack</span><span class="o">::</span><span class="no">Builder</span><span class="p">.</span><span class="nf">app</span> <span class="k">do</span>
  <span class="n">server</span> <span class="o">=</span> <span class="no">Server</span><span class="p">.</span><span class="nf">new</span><span class="p">(</span><span class="ss">host: </span><span class="s1">'localhost'</span><span class="p">)</span>
  <span class="n">map</span> <span class="s1">'/'</span> <span class="k">do</span>
    <span class="n">use</span> <span class="no">DRb</span><span class="o">::</span><span class="no">WebSocket</span><span class="o">::</span><span class="no">RackApp</span>
    <span class="n">run</span> <span class="n">server</span>
  <span class="k">end</span>
<span class="k">end</span>
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page24 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/protocol.png"}, "")))
  end
end
end

class Gibier::Page25 < Gibier::PageBase
def header
  h2(nil, "opal-drb")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "dRuby client implementation in Opal"),
                    li(nil, "It can't run with current version Opal. Because there is marshaling problem.")
      )
  end
end
end

class Gibier::Page26 < Gibier::PageBase
def header
  h2(nil, "opal-drb")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "dRuby client ",strong(nil, "and server")," implementation in Opal"),
                    li(nil, "It can't run with current version Opal. Because there is marshaling problem.")
      )
  end
end
end

class Gibier::Page27 < Gibier::PageBase
def header
  h2(nil, "Callbacks")
end

def content
  [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5
6</pre></td><td class="code"><pre><span class="n">remote</span> <span class="o">=</span> <span class="no">DRbObject</span><span class="p">.</span><span class="nf">new_with_uri</span> <span class="s1">'ws://127.0.0.1:1234'</span>
<span class="no">DRbObject</span><span class="p">.</span><span class="nf">start_service</span> <span class="c1"># Run as server</span>

<span class="n">remote</span><span class="p">.</span><span class="nf">each</span> <span class="k">do</span> <span class="o">|</span><span class="n">x</span><span class="o">|</span>
  <span class="n">x</span><span class="p">.</span><span class="nf">do_something</span> <span class="c1"># This is running on client</span>
<span class="k">end</span>
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page28 < Gibier::PageBase
def header
  h2(nil, "Callbacks")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/callbacks.png"}, "")))
  end
end
end

class Gibier::Page29 < Gibier::PageBase
def header
  h3(nil, "Browser (JavaScript) specific issues")
end

def content
  [].tap do |children|
  end
end
end

class Gibier::Page30 < Gibier::PageBase
def header
  h2(nil, "Asynchronous problem")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "It is forced asynchronous process with JavaScript."),
                    li(nil, strong(nil, "DRbObject"),"(as remote proxy) returns ",strong(nil, "Promise"),"."),
                    li(nil, "There was no choice but to break the interfaces.")
      )
  end
end
end

class Gibier::Page31 < Gibier::PageBase
def header
  h2(nil, "Asynchronous problem")
end

def content
  [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5
6
7</pre></td><td class="code"><pre><span class="n">remote</span><span class="p">.</span><span class="nf">start</span><span class="p">.</span><span class="nf">then</span> <span class="k">do</span> <span class="o">|</span><span class="n">session</span><span class="o">|</span>
  <span class="vi">@session</span> <span class="o">=</span> <span class="n">session</span>
  <span class="n">session</span><span class="p">.</span><span class="nf">manager</span><span class="p">.</span><span class="nf">collection</span><span class="p">.</span><span class="nf">then</span> <span class="k">do</span> <span class="o">|</span><span class="n">collection</span><span class="o">|</span>
    <span class="n">store</span> <span class="o">=</span> <span class="p">{</span> <span class="ss">fusens: </span><span class="n">collection</span> <span class="p">}</span>
    <span class="n">update_state</span><span class="p">(</span><span class="ss">store: </span><span class="n">store</span><span class="p">)</span>
  <span class="k">end</span>
<span class="k">end</span>
</pre></td></tr></tbody></table>
</div>
} } })
      children << h4(nil, "Callback HELL!!!")
  end
end
end

class Gibier::Page32 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/fuck.png"}, "")))
  end
end
end

class Gibier::Page33 < Gibier::PageBase
def header
  h2(nil, "Advantage of dRuby on Browser")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "dRuby provides transparent access to the server-side objects."),
                    li(nil, "The server-side objects are possible to share between different browsers. (It can be applied to collaborative applications)"),
                    li(nil, "No needs to declare any interfaces.")
      )
  end
end
end

class Gibier::Page34 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "Demo Application")
  end
end
end

class Gibier::Page35 < Gibier::PageBase
def header
  h2(nil, "Kanban")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "There are many tools that metaphor Kanban. However, it is far from the user experience of real Kanban."),
                    li(nil, "I aim at near user experience with the real Kanban.")
      )
      children << p(nil, p({class:"kanban"}, img({src:"#{Gibier.assets_path}/images/kanban.jpg"}, "")))
  end
end
end

class Gibier::Page36 < Gibier::PageBase
def header
  h2(nil, "Kanban-chan")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"kanban"}, img({src:"#{Gibier.assets_path}/images/kanbanchan.png"}, "")))
  end
end
end

class Gibier::Page37 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/structure.png"}, "")))
  end
end
end

class Gibier::Page38 < Gibier::PageBase
def header
  h2(nil, "Future tasks")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Security (Anybody can access remote objects)"),
                    li(nil, "Complete Kanban-chan as a practical application."),
                    li(nil, "Integration with Menilite (Supporting WebSocket is the missing-link)")
      )
  end
end
end

class Gibier::Page39 < Gibier::PageBase
def header
  h2(nil, "Conclusion")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "I introduced the gems drb-websocket and opal-drb for realize dRuby on Browser."),
                    li(nil, "It is suitable for collaborative web application (such as Google Apps)."),
                    li(nil, "I demonstarated Kanban application as example for the cooperative web application.")
      )
  end
end
end

Gibier.page_count = 40
Gibier.title = "dRuby on Browser"
