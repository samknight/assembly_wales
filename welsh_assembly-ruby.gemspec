
# -*- encoding: utf-8 -*-
$:.push('lib')
require "welsh_assembly/version"

Gem::Specification.new do |s|
  s.name     = "welsh_assembly-ruby"
  s.version  = WelshAssembly::VERSION.dup
  s.date     = "2013-02-25"
  s.summary  = "TODO: Summary of project"
  s.email    = "sam@samknight.co.uk"
  s.homepage = "http://github.com/samknight/welsh_assembly-ruby"
  s.authors  = ['Sam Knight']
  
  s.description = "A Gem that consumes data from the Welsh Assembly"
  
  dependencies = [
    # Examples:
    # [:runtime,     "rack",  "~> 1.1"],
    # [:development, "rspec", "~> 2.1"],
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
