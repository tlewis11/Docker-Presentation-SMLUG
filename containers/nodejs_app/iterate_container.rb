#!/usr/bin/env ruby
require 'open3'

def build_container( container:,
                     build_directory: )
  build_cmd = "docker build -t #{container} #{build_directory}"
  Open3.capture3(build_cmd)
end

def run_container(container:, port:)
  run_cmd = "docker run -p #{port}:#{port} -t #{container}"
  Open3.capture3(run_cmd)
end

container = ARGV[0]
port = ARGV[1]

puts (build_container(container: 'nodejs-app', build_directory: '.'))
puts run_container(container: 'nodejs-app', port: '8001')
