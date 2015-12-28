# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
#noinspection RubyResolve
require 'everyday-curses/version'

Gem::Specification.new do |spec|
  spec.name        = 'everyday-curses'
  spec.version     = EverydayCurses::VERSION
  spec.authors     = ['Eric Henderson']
  spec.email       = ['henderea@gmail.com']
  spec.summary     = %q{The MyCurses class from everyday-cli-utils}
  spec.description = %q{A utility for handling some curses stuff more easily.  Split out from everyday-cli-utils.}
  spec.homepage    = 'https://github.com/henderea/everyday-curses'
  spec.license     = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10', '>= 1.10.4'
  spec.add_development_dependency 'rake', '~> 10.4'

  spec.add_dependency 'curses', '~> 1.0', '>= 1.0.1'
  spec.add_dependency 'everyday-cli-utils', '~> 1.8', '>= 1.8.6'
end
