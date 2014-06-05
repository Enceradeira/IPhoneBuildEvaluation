require 'colorize'
require 'cucumber/rake/task'
require_relative 'app_paths'
require_relative 'x_code_build_action'
require_relative 'appium_server'

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
task :test => [:clean, :check_appium_server, :xc_unit_tests, :cucumber, :notify_build_succeeded] do
end

desc 'checks appium-server'
task :check_appium_server do
  unless AppiumServer.is_running?
    message = "Appium-Server is not running. Start Appium-Server with 'appium'"
    puts message.red.bold
    raise StandardError.new message
  end
end

task :default => [:test] do
end

