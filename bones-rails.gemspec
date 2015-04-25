# -*- encoding: utf-8 -*-
#lib = File.expand_path('../lib', __FILE__)
#$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require File.expand_path('../lib/bones-rails/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "bones-rails"
  spec.version       = BonesRails::VERSION
  spec.authors       = ["Sean C Davis"]
  spec.email         = ["scdavis41@gmail.com"]
  spec.description   = "Add Bones CSS framework to your rails app"
  spec.summary       = ""
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sass"
  spec.add_dependency "sass-rails"
  spec.add_dependency "bourbon"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end