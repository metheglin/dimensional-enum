# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dimensional/enum/version'

Gem::Specification.new do |spec|
  spec.name          = "dimensional-enum"
  spec.version       = Dimensional::Enum::VERSION
  spec.authors       = ["Watanabe, Mitsutoshi"]
  spec.email         = ["mitsutoshi@reivo.co.jp"]
  spec.summary       = %q{Extends to handle Rails Enum with multi dimensional attributes.}
  spec.description   = %q{Extends to handle Rails Enum with multi dimensional attributes.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activesupport", "~> 4.1"
  spec.add_runtime_dependency "activerecord", "~> 4.1"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
