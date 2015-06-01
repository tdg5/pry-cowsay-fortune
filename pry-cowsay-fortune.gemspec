# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pry_cowsay_fortune/version"

Gem::Specification.new do |spec|
  spec.name          = "pry-cowsay-fortune"
  spec.version       = PryCowsayFortune::VERSION
  spec.authors       = ["Danny Guinther"]
  spec.email         = ["dannyguinther@gmail.com"]
  spec.summary       = %q{pry + cowsay + fortune, FTW!}
  spec.description   = %q{pry + cowsay + fortune, FTW!}
  spec.homepage      = "https://github.com/tdg5/pry-cowsay-fortune"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^test/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", "~> 0.10.1"
end
