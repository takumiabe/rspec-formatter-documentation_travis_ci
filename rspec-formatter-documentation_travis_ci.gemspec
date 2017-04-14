# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/formatter/documentation_travis_ci/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-formatter-documentation_travis_ci"
  spec.version       = RSpec::Formatter::DocumentationTravisCI::VERSION
  spec.authors       = ["Takumi Abe"]
  spec.email         = ["abe@engraphia.com"]

  spec.summary       = %q{rspec built-in documentation formatter for travis-ci}
  spec.description   = %q{rspec built-in documentation formatter for travis-ci}
  spec.homepage      = "https://takumiabe.github.io"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec-core", "~> 3.0"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
