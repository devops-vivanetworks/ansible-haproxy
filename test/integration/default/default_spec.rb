# encoding: utf-8

# ensure haproxy package installed
describe package('haproxy') do
  it { should be_installed }
end

# Ensure haproxy service running and enabled on boot
describe service('haproxy') do
  it { should be_enabled }
  it { should be_running }
end