require 'rake/clean'
require 'rake/testtask'

namespace :test do

  Rake::TestTask.new(:run) do |t|
    t.libs = ['lib']
    t.test_files = FileList['test/*_test.rb']
    t.ruby_opts += ["-w"]
  end

  desc 'Run rcov for the entire test suite'
  task :coverage do
    rm_f "coverage"
    system "rcov", "-Ilib", "--exclude", "\.gem\/,\/gems\/", *FileList['test/**/*_test.rb']
  end
end

desc 'Run tests'
task :test => ['test:run']

