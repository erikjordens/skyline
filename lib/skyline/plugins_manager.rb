class Skyline::PluginsManager
  class << self
    def load_all!
      # Load external skyline plugins
      Dir[Rails.root + "vendor/skyline_plugins/*/skyline/load.rb"].each do |file|
        load file
      end      
    end
    
    def migration_paths
      Dir[Rails.root + "vendor/skyline_plugins/*/db/migrate"]
    end
  end
end
