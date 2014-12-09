# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'america/version'

Gem::Specification.new do |spec|
  spec.name          = "america"
  spec.version       = America::VERSION
  spec.authors       = ["Justin Mazzi"]
  spec.email         = ["jmazzi@gmail.com"]
  spec.summary       = %q{Convert between state names and abbreviations.}
  spec.description   = %q{Convert between state names and abbreviations.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_dependency "activesupport", ">= 3.0.0"
end
