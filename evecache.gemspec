Gem::Specification.new do |s|
  s.name        = "evecache"
  s.version     = "0.42.2"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Marvin Frick"]
  s.email       = ["marv@hostin.is"]
  s.homepage    = "https://github.com/MrMarvin/ruby-evecache"
  s.summary     = "A Ruby binding to libevecache to access Eve Online market cache files."
  s.description = "A Ruby binding to libevecache to access Eve Online market cache files. Does nothing more."
  s.license     = "GPL 2"
  s.required_rubygems_version = ">= 1.3.6"
  s.required_ruby_version = '>= 1.9.3'
  s.files        = `git ls-files`.split($\)
  s.extensions = ['ext/evecache/extconf.rb']
  s.require_path = 'lib'
end
