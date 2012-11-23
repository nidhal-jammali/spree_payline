# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spree_payline/version'

Gem::Specification.new do |gem|
  gem.name          = "spree_payline"
  gem.version       = SpreePayline::VERSION
  gem.authors       = ["Samuel Lebeau"]
  gem.email         = ["samuel.lebeau@gmail.com"]
  gem.summary       = %q{Payline DirectPayment gateway for Spree}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency 'spree_core', '~> 1.2.0'
  gem.add_dependency 'activemerchant-payline', '~> 0.0.1'
end
