module AppPaths
  def self.project_file
    @project_file ||=File.expand_path 'app/HelloWorldApp.xcodeproj'
  end

  def self.app_path
    @app_path ||= File.expand_path 'app/Build/Products/Release-iphonesimulator/HelloWorldApp.app'
  end

  def self.obj_root
    @obj_root ||= File.expand_path 'app/Build/'
  end

  def self.sym_root
    @sym_root ||= File.expand_path 'app/Build/Products/'
  end

  def self.scheme
    @scheme ||= 'HelloWorldApp'
  end
end
