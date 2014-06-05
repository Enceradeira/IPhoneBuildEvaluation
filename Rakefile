require 'colorize'
require 'cucumber/rake/task'
require_relative 'app_paths'
require_relative 'x_code_build_action'

Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = %w{--format pretty}
end

task :notify_build_succeeded do
  puts '*** BUILD SUCCEEDED ***'.green.bold
end

desc 'Clean the build'
task :clean do
  XCodeBuildAction.new(:clean).execute
end

desc 'Run XCode unit-tests'
task :xc_unit_tests do
  XCodeBuildAction.new(:test).execute
end

desc 'Build everything'
task :build do
  XCodeBuildAction.new(:build).execute
end

desc 'Run all tests'
task :test => [:clean, :xc_unit_tests, :cucumber, :notify_build_succeeded] do
end

task :default => [:test] do
end