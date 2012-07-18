# -*- encoding: utf-8 -*-
require File.expand_path('../lib/viewtalitarian/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Bryan Woods"]
  gem.email         = ["bryanwoods4e@gmail.com"]
  gem.description   = "blah"
  gem.summary       = "blah"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "viewtalitarian"
  gem.require_paths = ["lib"]
  gem.version       = Viewtalitarian::VERSION
end
