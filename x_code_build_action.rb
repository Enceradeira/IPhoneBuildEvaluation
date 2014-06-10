class XCodeBuildAction
  def initialize(build_action)
    @build_action = build_action
  end

  def execute
    result = system("xcodebuild #{@build_action} -sdk iphonesimulator -workspace '#{AppPaths.workspace_file}' -scheme '#{AppPaths.scheme}' -configuration 'Release' OBJROOT='#{AppPaths.obj_root}' SYMROOT='#{AppPaths.sym_root}' ONLY_ACTIVE_ARCH=NO")
    unless result
      raise StandardError.new 'build aborted!'
    end
  end
end