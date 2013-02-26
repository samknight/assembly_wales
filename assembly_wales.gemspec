
# -*- encoding: utf-8 -*-
$:.push('lib')
require "assembly_wales/version"

Gem::Specification.new do |s|
  s.name     = "assembly_wales"
  s.version  = AssemblyWales::VERSION
  s.date     = "2013-02-25"
  s.summary  = "TODO: Summary of project"
  s.email    = "sam@samknight.co.uk"
  s.homepage = "http://github.com/samknight/assembly_wales"
  s.authors  = ['Sam Knight']
  
  s.description = "A Gem that consumes data from the Welsh Assembly"
  
  dependencies = [
    [:runtime, "httparty"],
    [:development, "minitest"],
    [:development, "webmock"],
    [:development, "vcr"],
    [:development, "turn"],
    [:development, "rake"],
  ]
  
  s.files         = Dir['**/*']
  s.test_files    = Dir['test/**/*'] + Dir['spec/**/*']
  s.executables   = Dir['bin/*'].map { |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  
  ## Make sure you can build the gem on older versions of RubyGems too:
  s.rubygems_version = "2.0.0"
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.specification_version = 3 if s.respond_to? :specification_version
  
  dependencies.each do |type, name, version|
    if s.respond_to?("add_#{type}_dependency")
      s.send("add_#{type}_dependency", name, version)
    else
      s.add_dependency(name, version)
    end
  end
end
