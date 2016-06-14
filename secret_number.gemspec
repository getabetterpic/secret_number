# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'secret_number/version'

Gem::Specification.new do |spec|
  spec.name          = "secret_number"
  spec.version       = SecretNumber::VERSION
  spec.authors       = ["getabetterpic"]
  spec.email         = ["dan@danandjensmith.com"]

  spec.summary       = %q{Determine if all primes below given number are additive}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = ["secret"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.10"
end
