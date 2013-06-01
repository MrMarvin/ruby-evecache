lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
require 'evecache'

Gem::Specification.new do |s|
  s.name        = "evecache"
  s.version     = Evecache::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Marvin Frick"]
  s.email       = ["marv@hostin.is"]
  s.homepage    = "https://github.com/MrMarvin/evecache"
  s.summary     = "A Ruby binding to libevecache to access Eve Online market cache files."
  s.description = "A Ruby binding to libevecache to access Eve Online market cache files. Does nothing more."
  s.license     = "GPL 2"
  s.required_rubygems_version = ">= 1.3.6"
  s.required_ruby_version = '>= 1.9.3'
  s.files        = `git ls-files`.split($\)
  s.extensions = ['ext/evecache/extconf.rb']
  s.require_path = 'lib'
end
