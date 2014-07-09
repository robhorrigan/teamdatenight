# -*- encoding: utf-8 -*-
# stub: fandango 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "fandango"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jared Ning"]
  s.date = "2012-05-28"
  s.description = "Find theaters and movies on sale near a given postal code"
  s.email = ["jared@redningja.com"]
  s.homepage = "https://github.com/ordinaryzelig/fandango"
  s.rubyforge_project = "fandango"
  s.rubygems_version = "2.3.0"
  s.summary = "Fandango API"

  s.installed_by_version = "2.3.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.0"])
      s.add_development_dependency(%q<awesome_print>, [">= 0"])
      s.add_development_dependency(%q<fakeweb>, ["= 1.3.0"])
      s.add_development_dependency(%q<minitest>, ["= 3.0.1"])
      s.add_development_dependency(%q<vcr>, ["= 2.1.1"])
    else
      s.add_dependency(%q<nokogiri>, ["~> 1.0"])
      s.add_dependency(%q<awesome_print>, [">= 0"])
      s.add_dependency(%q<fakeweb>, ["= 1.3.0"])
      s.add_dependency(%q<minitest>, ["= 3.0.1"])
      s.add_dependency(%q<vcr>, ["= 2.1.1"])
    end
  else
    s.add_dependency(%q<nokogiri>, ["~> 1.0"])
    s.add_dependency(%q<awesome_print>, [">= 0"])
    s.add_dependency(%q<fakeweb>, ["= 1.3.0"])
    s.add_dependency(%q<minitest>, ["= 3.0.1"])
    s.add_dependency(%q<vcr>, ["= 2.1.1"])
  end
end
