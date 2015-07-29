# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_admin_countries/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_admin_countries"
  spec.version       = RailsAdminCountries::VERSION
  spec.authors       = ["Sergey Malykh"]
  spec.email         = ["xronos.i.am@gmail.com"]
  spec.authors       = ["Sergey Malykh"]
  spec.email         = ["xronos.i.am@gmail.com"]
  spec.description   = %q{RailsAdmin support for the gem countries}
  spec.summary       = %q{RailsAdmin support for the gem countries}
  spec.homepage      = "https://github.com/xronos-i-am/rails_admin_authorized_fields"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "countries", "~> 0.11.0"
  spec.add_dependency "rails_admin", ">= 0.6.0"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
