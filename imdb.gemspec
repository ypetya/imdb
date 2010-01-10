# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{imdb}
  s.version = "0.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ariejan de Vroom"]
  s.date = %q{2009-12-11}
  s.default_executable = %q{imdb}
  s.description = %q{Easily use Ruby or the command line to find information on IMDB.com.}
  s.email = %q{ariejan@ariejan.net}
  s.executables = ["imdb"]
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "History.txt",
     "Manifest.txt",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/imdb",
     "config/website.yml",
     "imdb.gemspec",
     "lib/imdb.rb",
     "lib/imdb/cli.rb",
     "lib/imdb/movie.rb",
     "lib/imdb/movie_details.rb",
     "lib/imdb/movie_list.rb",
     "lib/imdb/search.rb",
     "lib/imdb/string_extensions.rb",
     "lib/imdb/top_250.rb",
     "script/console",
     "script/destroy",
     "script/generate",
     "spec/fixtures/search_kannethirey_thondrinal",
     "spec/fixtures/search_matrix_revolutions",
     "spec/fixtures/search_star_trek",
     "spec/fixtures/top_250",
     "spec/fixtures/tt0083987",
     "spec/fixtures/tt0095016",
     "spec/fixtures/tt0111161",
     "spec/fixtures/tt0117731",
     "spec/fixtures/tt0242653",
     "spec/fixtures/tt0330508",
     "spec/fixtures/tt1352369",
     "spec/imdb/cli_spec.rb",
     "spec/imdb/movie_spec.rb",
     "spec/imdb/search_spec.rb",
     "spec/imdb/top_250_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "tasks/fixtures.rake",
     "tasks/rspec.rake"
  ]
  s.homepage = %q{http://github.com/ariejan/imdb}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Easily access the publicly available information on IMDB.}
  s.test_files = [
    "spec/imdb/cli_spec.rb",
     "spec/imdb/movie_spec.rb",
     "spec/imdb/search_spec.rb",
     "spec/imdb/top_250_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_runtime_dependency(%q<hpricot>, [">= 0.8.1"])
      s.add_development_dependency(%q<fakeweb>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<hpricot>, [">= 0.8.1"])
      s.add_dependency(%q<fakeweb>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<hpricot>, [">= 0.8.1"])
    s.add_dependency(%q<fakeweb>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

