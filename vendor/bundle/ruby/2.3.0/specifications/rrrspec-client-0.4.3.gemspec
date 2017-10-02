# -*- encoding: utf-8 -*-
# stub: rrrspec-client 0.4.3 ruby lib

Gem::Specification.new do |s|
  s.name = "rrrspec-client".freeze
  s.version = "0.4.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Masaya Suzuki".freeze]
  s.date = "2016-06-28"
  s.description = "Execute RSpec in a distributed manner".freeze
  s.email = ["draftcode@gmail.com".freeze]
  s.executables = ["rrrspec".freeze, "rrrspec-client".freeze]
  s.files = ["bin/rrrspec".freeze, "bin/rrrspec-client".freeze]
  s.homepage = "https://github.com/cookpad/rrrspec".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Execute RSpec in a distributed manner".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<extreme_timeout>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<launchy>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<redis>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<rspec>.freeze, [">= 3.0"])
      s.add_runtime_dependency(%q<thor>.freeze, [">= 0.18.0"])
      s.add_runtime_dependency(%q<uuidtools>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<tzinfo>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_dependency(%q<extreme_timeout>.freeze, [">= 0"])
      s.add_dependency(%q<launchy>.freeze, [">= 0"])
      s.add_dependency(%q<redis>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 3.0"])
      s.add_dependency(%q<thor>.freeze, [">= 0.18.0"])
      s.add_dependency(%q<uuidtools>.freeze, [">= 0"])
      s.add_dependency(%q<tzinfo>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_dependency(%q<extreme_timeout>.freeze, [">= 0"])
    s.add_dependency(%q<launchy>.freeze, [">= 0"])
    s.add_dependency(%q<redis>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 3.0"])
    s.add_dependency(%q<thor>.freeze, [">= 0.18.0"])
    s.add_dependency(%q<uuidtools>.freeze, [">= 0"])
    s.add_dependency(%q<tzinfo>.freeze, [">= 0"])
  end
end
