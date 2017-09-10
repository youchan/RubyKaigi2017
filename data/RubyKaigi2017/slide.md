# dRuby on Browser

%author: Yoh Osaki a.k.a @youchan

%icon: ![](youchan.jpg)

---

%huge: RejectKaigi

---

![large](rejectkaigi.jpg)

---

I was **rejected** my CFP: **"RejectKaigi"**, so I was talking about **RejectKaigi** on **RejectKaigi**

---

%large: This is **Self-mention**

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
* Object marshalling
* Integration with ActiveRecord

## "dRuby on Browser"

![large](RubyKaigi2017.png)

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
* The server-side objects are possible to share between different browsers.
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

* Security(Anybody can access remote objects)
* Rails integration
* Integration with Menilite

## Conclusion

* I introduced the gems drb-websocket and opal-drb for realize dRuby on Browser.
* It has advantages for cooperative web application.
* I demonstarated Kanban application as example for the cooperative web application.

