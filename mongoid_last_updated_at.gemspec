# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongoid_last_updated_at/version'

Gem::Specification.new do |spec|
  spec.name          = "mongoid_last_updated_at"
  spec.version       = MongoidLastUpdatedAt::VERSION
  spec.authors       = ["Semenyuk Dmitriy"]
  spec.email         = ["mail@semenyukdmitriy.com"]
  spec.description   = %q{Gives collection last update time (if you use `updated_at` field)}
  spec.summary       = %q{Gives collection last update time (if you use `updated_at` field)}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "mongoid"
end
