# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "vtex/version"

Gem::Specification.new do |spec|
  spec.name          = "vtex"
  spec.version       = Vtex::VERSION
  spec.authors       = ["Mumo Carlos"]
  spec.email         = ["mumo.crls@gmail.com"]

  spec.summary       = %q{Gem to wrap VTex API}
  spec.description   = %q{Gem to wrap VTex API}
  spec.homepage      = "https://github.com/mumoc/vtex"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'virtus'
  spec.add_dependency "resource_kit"
  spec.add_dependency "kartograph"
  spec.add_dependency "activesupport"
  spec.add_dependency "faraday"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  # FakeServe
  spec.add_development_dependency 'sinatra'
  spec.add_development_dependency 'webmock'
end
