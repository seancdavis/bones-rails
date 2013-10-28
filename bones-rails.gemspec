# -*- encoding: utf-8 -*-
#lib = File.expand_path('../lib', __FILE__)
#$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require File.expand_path('../lib/bones/rails/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "bones-rails"
  spec.version       = Bones::VERSION
  spec.authors       = ["Sean C. Davis"]
  spec.email         = ["sean@rocktreedesign.com"]
  spec.description   = ""
  spec.summary       = ""
  spec.homepage      = ""
  spec.license       = "MIT"
  
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_dependency "sass"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end