# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mappru/version'

Gem::Specification.new do |spec|
  spec.name          = 'mappru'
  spec.version       = Mappru::VERSION
  spec.authors       = ['winebarrel']
  spec.email         = ['sgwr_dts@yahoo.co.jp']

  spec.summary       = %q{Mappru is a tool to manage VPC Route Table.}
  spec.description   = %q{Mappru is a tool to manage VPC Route Table.}
  spec.homepage      = 'https://github.com/winebarrel/mappru'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'aws-sdk', '~> 2'
  spec.add_dependency 'diffy'
  spec.add_dependency 'hash_modern_inspect'
  spec.add_dependency 'hashie'
  spec.add_dependency 'parallel'
  spec.add_dependency 'term-ansicolor'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
