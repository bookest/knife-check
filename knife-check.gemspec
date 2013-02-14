# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'knife-check/version'

Gem::Specification.new do |s|
  s.name        = "knife-check"
  s.version     = Knife::Setup::VERSION
  s.authors     = ["Vasiliev D.V."]
  s.email       = %w(vadv.mkn@gmail.com)
  s.homepage    = "https://github.com/vadv/knife-check"
  s.summary     = %q{Setup chef on machine.}
  s.description = %q{Allows you to bootsrap machine and set role and env.}
  s.licenses    = %w(MIT)
  
  s.add_dependency('chef')

  s.rubyforge_project = "knife-check"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w(lib)
end
