require_relative './say_and_look'

extend SayAndLook

ARGV[1] = ARGV[1].to_i unless ARGV[1].nil?

build_generation(*ARGV).each { |g| puts g }