require 'serverspec'
require 'net/ssh'
require 'net/smtp'
require 'net/imap'
require 'net/ftp'
require 'faraday'
require 'nokogiri'
require 'net/telnet'
require 'yarjuf'

set :backend, :ssh

currentDir=Dir.pwd

runProperties = {}
File.open("test.properties", 'r').each_line do |line|
  runProperties[$1.strip] = $2 if line =~ /([^=]*)=(.*)\/\/(.*)/ || line =~/([^=]*)=(.*)/
end
output = "File Name test.properties \n"
runProperties.each { |key, value| output += " #{key}= #{value} \n" }

RSpec.configure do |c|
  c.output_stream = File.open("#{currentDir}/serverspec.html", 'w')
  c.formatter = 'html'
end

set :sudo_password, runProperties['checklist_sudo_pass']
host = runProperties['checklist_target_host']
options = Net::SSH::Config.for(host)
options[:user] ||= runProperties['checklist_target_user']
options[:password] ||= runProperties['checklist_target_password']
options[:port] ||= runProperties['ssh_port']

set :host, options[:host_name] || host
set :ssh_options, options
