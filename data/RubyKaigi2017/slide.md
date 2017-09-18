# dRuby on Browser

%author: Yoh Osaki a.k.a @youchan

%icon: ![](youchan.jpg)

## Sponsor

![ubiregi](ubiregi.png)

---

![large](rejectkaigi.png)

---

![large](rejectkaigi.jpg)

---

I was **rejected** my CFP: **"RejectKaigi"**, so I was talking about **RejectKaigi** on **RejectKaigi**

---

%large: This is **Self-mention**

%large: 自己言及

---

%huge: Quine

---

![large](quine.jpg)

---

%large: **dRuby on Browser**

## Who am I?

* Yoh Osaki (@youchan)
* Ubiregi inc.
* http://github.com/youchan/hyalite
* http://github.com/youchan/menilite

## Book

![book](obnou.jpg)

#### ジュンク堂ブースにてサイン会します

## "Writing web application in Ruby"

![large](RubyKaigi2015.png)

## Opal

* Ruby to JavaScript source code compiler
* Web front end programming in Ruby is good!
* [JavaScript is the Donald Trump of the IT Industry](https://medium.com/@richardeng/javascript-is-the-donald-trump-of-the-it-industry-376ffdda774)
    - Donald Trump is puerile, arrogant, ignorant, vindictive, delusional, and egotistical.
    - JavaScript is riddled with warts and internal inconsistencies.

## Hyalite

* React-like virtual DOM implementation in Ruby.

## "Isomorphic web programming in Ruby"

![large](RubyKaigi2016.png)

## Isomorphic programming

* node.js ?(Meteo, Server side rendering with React)
* I don't want to write javascript.
* We can write in Ruby both on the browser and the server-side!

## Menilite

* Shares the code for models on the browser and the server-side.
* Transparency access by object marshalling.
* No need to write your API code.
* Integration with ActiveRecord

## "dRuby on Browser"

![large](RubyKaigi2017.png)

## dRuby

- Distributed objects system in Ruby
- Standard attached library
- No need interface description such as IDL

---

![large](seki.png)

## Requirements for dRuby on Browser

* WebSocket protocol plugin for dRuby.
* dRuby client on Browser(by Opal).

## Requirements for dRuby on Browser

* WebSocket protocol plugin for dRuby.
    - **drb-websocket**
* dRuby client on Browser(by Opal).
    - **opal-drb**

## drb-websocket

* WebSocket protocol plugin for dRuby.
* Using **faye-websocket**
* Standalone mode or Rack middleware mode

## Rack middleware mode

```ruby
app = Rack::Builder.app do
  server = Server.new(host: 'localhost')
  map '/' do
    use DRb::WebSocket::RackApp
    run server
  end
end
```

---

![large](protocol.png)

## opal-drb

* dRuby client implementation in Opal
* It can't run with current version Opal. Because there is marshaling problem.

## opal-drb

* dRuby client **and server** implementation in Opal
* It can't run with current version Opal. Because there is marshaling problem.

## Callbacks

```ruby
remote = DRbObject.new_with_uri 'ws://127.0.0.1:1234'
DRbObject.start_service # Run as server

remote.each do |x|
  x.do_something # This is running on client
end
```

## Callbacks

![large](callbacks.png)

### Browser (JavaScript) specific issues

## Asynchronous problem

* It is forced asynchronous process with JavaScript.
* **DRbObject**(as remote proxy) returns **Promise**.
* There was no choice but to break the interfaces.

## Asynchronous problem

```ruby
remote.start.then do |session|
  @session = session
  session.manager.collection.then do |collection|
    store = { fusens: collection }
    update_state(store: store)
  end
end
```

#### Callback HELL!!!

---

![large](fuck.png)

## Advantage of dRuby on Browser

* dRuby provides transparent access to the server-side objects.
* The server-side objects are possible to share between different browsers. (It can be applied to collaborative applications)
* No needs to declare any interfaces.

---

%large: Demo Application

## Kanban

* There are many tools that metaphor Kanban. However, it is far from the user experience of real Kanban.
* I aim at near user experience with the real Kanban.

![kanban](kanban.jpg)

## Kanban-chan

![kanban](kanbanchan.png)


----

![large](structure.png)

## Future tasks

* Security (Anybody can access remote objects)
* Complete Kanban-chan as a practical application.
* Integration with Menilite (Supporting WebSocket is the missing-link)

## Conclusion

* I introduced the gems drb-websocket and opal-drb for realize dRuby on Browser.
* It is suitable for collaborative web application (such as Google Apps).
* I demonstarated Kanban application as example for the cooperative web application.

