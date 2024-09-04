#!/usr/bin/env ruby

require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: example.rb [options]"

  opts.on("-i", "--iteration") do
    options[:iteration] = true
  end

  # first.last
  opts.on('-u USER', /^.+\..+$/) do | user|
    options[:user] = user
  end

  opts.on("-p PASSWORD") do |password|
    options[:password] = password
  end

  servers = {
    'dev' => '127.0.0.1',
    'qa' => 'www.example.com'
  }

  opts.on('--server SERVER', servers) do |address|
    options[:address] = address
  end 

end.parse!
puts options.inspect