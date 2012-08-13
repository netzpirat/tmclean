# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = 'tmclean'
  s.version     = '0.1.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Michael Kessler']
  s.email       = ['michi@netzpiraten.ch']
  s.homepage    = 'https://github.com/netzpirat/tmclean'
  s.summary     = 'Clean old Time Machine backups with ease'
  s.description = 'Clean old Time Machine backups with ease'

  s.required_rubygems_version = '>= 1.3.6'

  s.add_dependency 'chronic'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'

  s.files        = Dir.glob('bin/*') + %w[LICENSE README.md]
  s.executables  = 'tmclean'
end
