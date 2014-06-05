require 'colorize'
#require 'cucumber/rake/task'
require_relative 'app_paths'

=begin
Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = %w{--format pretty}
end
=end

class BuildAction
  def initialize(build_action)
    @build_action = build_action
  end
  def execute
    result = system("xcodebuild #{@build_action} -sdk iphonesimulator -project '#{AppPaths.project_file}' -scheme '#{AppPaths.scheme}' -configuration 'Release' OBJROOT='#{AppPaths.obj_root}' SYMROOT='#{AppPaths.sym_root}' CODE_SIGN_IDENTITY='' CODE_SIGNING_REQUIRED=NO ONLY_ACTIVE_ARCH=NO")
    unless result
      raise StandardError.new 'build aborted!'
    end
  end
end

task :notify_build_succeeded do
  puts '*** BUILD SUCCEEDED ***'.green.bold
end

desc 'cleans the build'
task :clean do
  BuildAction.new(:clean).execute
end

desc 'tests the build'
task :test do
  BuildAction.new(:test).execute
end

task :default => [:clean, :test, :notify_build_succeeded] do
end