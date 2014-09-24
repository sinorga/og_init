# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'og_init/version'

Gem::Specification.new do |spec|
  spec.name          = "og_init"
  spec.version       = OgInit::VERSION
  spec.authors       = ["orga"]
  spec.email         = ["orga.shih@gmail.com"]
  spec.description   = %q{ og_init is a basic rails application generator with some additional setups. }
  spec.summary       = %q{ og_init is a basic rails application generator with some additional setups. }
  spec.homepage      = "https://github.com/sinorga/og_init"
  spec.license      = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rails', '~> 4.0'
  spec.add_dependency "bundler", "~> 1.6"
  spec.add_dependency "rvm", "~> 1.11"
end
