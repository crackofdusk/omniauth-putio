# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-putio/version', __FILE__)


Gem::Specification.new do |gem|
  gem.name        = "omniauth-putio"
  gem.version     = OmniAuth::Putio::VERSION
  gem.authors     = ["Dimiter Petrov"]
  gem.email       = ["crackofdusk@gmail.com"]
  gem.homepage    = "https://github.com/jamiew/omniauth-youtube"
  gem.description = %q{OmniAuth strategy for the Put.io v2 API}
  gem.summary     = gem.description

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.1.1'

  gem.required_rubygems_version = Gem::Requirement.new('>= 1.3.6') if gem.respond_to? :required_rubygems_version=
end
