class BuildAction
  def initialize(build_action)
    @build_action = build_action
    @project_file = File.expand_path 'HelloWorldApp/HelloWorldApp.xcodeproj'
    @obj_root = File.expand_path 'HelloWorldApp/Build/'
    @sym_root = File.expand_path 'HelloWorldApp/Build/Products/'
  end
  def execute
    system("xcodebuild #{@build_action} -sdk iphonesimulator -project '#{@project_file}' -scheme 'HelloWorldApp' -configuration 'Release' OBJROOT='#{@obj_root}' SYMROOT='#{@sym_root}'' CODE_SIGN_IDENTITY='' CODE_SIGNING_REQUIRED=NO ONLY_ACTIVE_ARCH=NO'")
  end
end

task :clean do
  BuildAction.new(:clean).execute
end

task :test do
  BuildAction.new(:test).execute
end

task :default => [:clean, :test] do
end