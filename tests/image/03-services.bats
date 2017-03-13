@test "service 'consul-template' should be installed" {
  run test -f /etc/services.d/consul-template/run
  [ $status -eq 0 ]
}

@test "service 'go-dnsmasq' should be installed" {
  run test -f /etc/services.d/go-dnsmasq/run
  [ $status -eq 0 ]
}