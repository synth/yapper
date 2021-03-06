# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "yapper/version"

Gem::Specification.new do |gem|
  gem.add_runtime_dependency 'yam', '2.0.1'
  gem.authors = ["Bruno Mattarollo, Peter Philips"]
  gem.description = %q{A Ruby wrapper for the Yammer REST API}
  gem.email = ['bruno.mattarollo@gmail.com', 'pete@p373.net']
  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.files = `git ls-files`.split("\n")
  gem.homepage = 'https://github.com/synth/yapper'
  gem.name = 'yapper'
  gem.require_paths = ['lib']
  gem.required_rubygems_version = Gem::Requirement.new('>= 1.3.6')
  gem.summary = %q{Ruby wrapper for the Yammer API}
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.version = Yapper::VERSION.dup
end
