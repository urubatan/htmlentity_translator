# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'htmlentity_translator/version'

Gem::Specification.new do |spec|
  spec.name          = "htmlentity_translator"
  spec.version       = HtmlentityTranslator::VERSION
  spec.authors       = ["Rodrigo Urubatan"]
  spec.email         = ["rodrigo@urubatan.com.br"]
  spec.summary       = %q{This gem is a simple library to help add or remove HTML entities to a string}
  spec.description   = %q{This gem is a simple libraty to help add or remoge HTML entities to a string the usage is simple "&amp;this needs to be removed&aacute;".decode_entities will remove all HTML entities, and "á now I need it encoded".encode_entities will replace non printable ascii with the corresponding HTML entitites}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
