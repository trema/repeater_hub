Feature: "Repeater Hub" example
  Background:
    Given a file named ".trema/config" with:
    """
    LOG_DIR: .
    PID_DIR: .
    SOCKET_DIR: .
    """
    And a file named "network.conf" with:
    """
    vswitch('repeater_hub') { datapath_id 0xabc }

    vhost('host1') {
      ip '192.168.0.1'
      promisc true
    }
    vhost('host2') {
      ip '192.168.0.2'
      promisc true
    }
    vhost('host3') {
      ip '192.168.0.3'
      promisc true
    }

    link 'repeater_hub', 'host1'
    link 'repeater_hub', 'host2'
    link 'repeater_hub', 'host3'
    """

  Scenario: Run
    Given I successfully run `trema run ../../lib/repeater_hub.rb -c network.conf -d`
    And I run `sleep 5`
    When I successfully run `trema send_packets --source host1 --dest host2 --n_pkts 1`
    And I run `trema show_stats host1 --tx`
    And I run `trema show_stats host2 --rx`
    And I run `trema show_stats host3 --rx`
    Then the output from "trema show_stats host1 --tx" should contain "192.168.0.2,1,192.168.0.1,1,1,50"
    And the output from "trema show_stats host2 --rx" should contain "192.168.0.2,1,192.168.0.1,1,1,50"
    And the output from "trema show_stats host3 --rx" should contain "192.168.0.2,1,192.168.0.1,1,1,50"
