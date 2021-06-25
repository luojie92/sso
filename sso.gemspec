# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sso/version'

Gem::Specification.new do |spec|
  spec.name          = "sso"
  spec.version       = Sso::VERSION
  spec.authors       = ["luojie"]
  spec.email         = ["luojie@yolanda.hk"]
  spec.summary       = %q{Yolanda middleware for Message.}
  spec.description   = ""
  spec.homepage      = "https://github.com/luojie2019/sso"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"

  spec.add_dependency 'nokogiri'
  spec.add_dependency 'multi_xml'
  spec.add_dependency 'roxml'
end
