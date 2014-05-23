# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git/info/version'

Gem::Specification.new do |spec|
  spec.name          = "git-info"
  spec.version       = Git::Info::VERSION
  spec.authors       = ["Yu-Hung Lin"]
  spec.email         = ["yuhung@fundingcircle.com"]
  spec.summary       = %q{Reads in git info from a project directory}
  spec.description   = %q{Reads in git info from a project directory}
  spec.homepage      = "http://github.com/FundingCircle/git-info"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
