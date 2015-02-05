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
```


Play
----

Run this controller:

```
% bundle exec trema run ./lib/repeater_hub.rb -c trema.conf
```

Send some packets from host1 to host2, and show received packet stats
of host2 and host3:

```
% bundle exec trema send_packets --source host1 --dest host2 --n_pkts 10
% bundle exec trema show_stats host2 --rx
ip_dst,tp_dst,ip_src,tp_src,n_pkts,n_octets
192.168.0.2,1,192.168.0.1,1,10,500
% bundle exec trema show_stats host3 --rx
ip_dst,tp_dst,ip_src,tp_src,n_pkts,n_octets
192.168.0.2,1,192.168.0.1,1,8,400
```

Enjoy!
