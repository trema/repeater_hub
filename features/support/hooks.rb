Before('@sudo') do
  @aruba_timeout_seconds = 10
end

After('@sudo') do
  run 'trema killall'
  sleep 5
end
