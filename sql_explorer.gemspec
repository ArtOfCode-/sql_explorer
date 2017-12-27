# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sql_explorer/version'

Gem::Specification.new do |spec|
  spec.name          = 'sql_explorer'
  spec.version       = SQLExplorer::VERSION
  spec.authors       = ['Owen Jenkins']
  spec.email         = ['art@charcoal-se.org']
  spec.summary       = 'SQL-based data explorer for Rails.'
  spec.homepage      = 'https://github.com/ArtOfCode-/sql_explorer'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '~> 5'

  spec.add_development_dependency 'bundler', '~> 1.7'
end
