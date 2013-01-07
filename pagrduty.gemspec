# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pagrduty/version'

Gem::Specification.new do |gem|
  gem.name          = "pagrduty"
  gem.version       = Pagrduty::VERSION
  gem.authors       = ["Nisarg Shah"]
  gem.email         = ["nisargshah100@gmail.com"]
  gem.description   = %q{Simple interface for calling PagerDuty API}
  gem.homepage      = "%q{http://github.com/nisargshah100/pagrduty}"
  gem.summary = %q{Pagerduty API client library}

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency('faraday')
end
