repeater_hub
============
[![Build Status](http://img.shields.io/travis/trema/repeater_hub/develop.svg?style=flat)][travis]
[![Code Climate](http://img.shields.io/codeclimate/github/trema/repeater_hub.svg?style=flat)][codeclimate]
[![Coverage Status](http://img.shields.io/coveralls/trema/repeater_hub/develop.svg?style=flat)][coveralls]
[![Dependency Status](http://img.shields.io/gemnasium/trema/repeater_hub.svg?style=flat)][gemnasium]
[![Gitter chat](https://badges.gitter.im/Join Chat.svg)][gitter]

An OpenFlow controller that emulates a repeater hub.

[travis]: http://travis-ci.org/trema/repeater_hub
[codeclimate]: https://codeclimate.com/github/trema/repeater_hub
[coveralls]: https://coveralls.io/r/trema/repeater_hub
[gemnasium]: https://gemnasium.com/trema/repeater_hub
[gitter]: https://gitter.im/trema/repeater_hub

Install
-------

```
$ git clone https://github.com/trema/repeater_hub.git
$ cd repeater_hub
$ bundle install
$ bundle exec rake
```


Play
----

Run this controller

```
% TREMA_TMP=./tmp bundle exec trema run ./lib/repeater_hub.rb
```

Enjoy!
