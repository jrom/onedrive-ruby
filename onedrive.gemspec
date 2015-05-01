# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'onedrive/version'

Gem::Specification.new do |spec|
  spec.name          = "onedrive"
  spec.version       = Onedrive::VERSION
  spec.authors       = ["Jordi Romero"]
  spec.email         = ["jordi@jrom.net"]

  spec.summary       = %q{Ruby Gem to interact with OneDrive's API}
  spec.description   = %q{TODO}
  spec.homepage      = "https://github.com/jrom/onedrive-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday', '~> 0.9.1'
  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
