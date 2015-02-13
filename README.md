EdinSolar site
==============

Dependencies
------------

###System level:

* Postgresql devel
* Sqlite devel

###App:

* Ruby (we're using 2.1.3)
  - [RVM][] is highly recommended
* Bundler `(sudo) gem install bundler` (Note: If you're running RVM you don't need root privileges)
* To install the other dependencies, run `bundle`

Running
-------

We're hosting the site on Heroku for the moment, so please talk to Will Mathewson (neanias) for access


To run the server locally,

`bundle exec rackup`

There is also a gem for development called [Guard][]. This is "a command line tool to easily handle events on file system modifications".

One of the plugins for it that is included is [LiveReload][] which will reload the browser when views are changed (requires the LiveReload extension)

To run Guard,

`bundle exec guard`


[RVM]: http://rvm.io/
[Guard]: http://guardgem.org
[LiveReload]: http://feedback.livereload.com/knowledgebase/articles/86242-how-do-i-install-and-use-the-browser-extensions-
