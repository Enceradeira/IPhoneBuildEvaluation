require 'colorize'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = %w{--format pretty}
end


class BuildAction
  def initialize(build_action)
    @build_action = build_action
    @project_file = File.expand_path 'HelloWorldApp/HelloWorldApp.xcodeproj'
    @obj_root = File.expand_path 'HelloWorldApp/Build/'
    @sym_root = File.expand_path 'HelloWorldApp/Build/Products/'
    @scheme = 'HelloWorldApp'
  end
  def execute
    result = system("xcodebuild #{@build_action} -sdk iphonesimulator -project '#{@project_file}' -scheme '#{@scheme}' -configuration 'Release' OBJROOT='#{@obj_root}' SYMROOT='#{@sym_root}' CODE_SIGN_IDENTITY='' CODE_SIGNING_REQUIRED=NO ONLY_ACTIVE_ARCH=NO")
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