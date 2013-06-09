# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ffi-webkit-js"
  s.version = "0.0.1"

  s.summary = "GirFFI-based bridge between WebKit and RubyJS"

  s.authors = ["Matijs van Zuijlen"]
  s.email = ["matijs@matijs.net"]
  s.homepage = "http://www.github.com/mvz/ffi-webkit-js"

  s.rdoc_options = ["--main", "README.rdoc"]

  s.files = Dir['{lib,test,tasks,examples}/**/*', "*.rdoc", "History.txt", "Rakefile"] & `git ls-files -z`.split("\0")
  s.extra_rdoc_files = ["README.rdoc"]
  s.test_files = `git ls-files -z -- test`.split("\0")

  s.add_runtime_dependency('gir_ffi', ["~> 0.5.0"])
  s.add_runtime_dependency('ruby_js', ["~> 0.1.0"])
  s.add_development_dependency('minitest', ["~> 3.2.0"])
  s.add_development_dependency('rake', ["~> 10.0.3"])

  s.require_paths = ["lib"]
end

