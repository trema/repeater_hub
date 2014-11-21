require 'bundler'

begin
  Bundler.setup :default, :development
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts 'Run `bundle install` to install missing gems'
  exit e.status_code
end

require 'aruba/cucumber'
require 'trema'

ENV['TREMA_TMP'] = File.join(__dir__, '..', '..', 'tmp', 'aruba')

def ps_entry_of(name)
  `ps -ef | grep -w "#{name} " | grep -v grep`
end
