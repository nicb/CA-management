require 'yaml'

module CA

  module Management

    module Helpers
  
      module ConnectionHelper
  
        DATABASE_CONFIG_FILE = File.expand_path(File.join(['..'] * 5, 'config', 'databases.yml'), __FILE__)
  
        def connection_parameters(db, env = ENV['CA_MANAGEMENT_ENV'] || 'development')
          dbparms = YAML.load(File.open(DATABASE_CONFIG_FILE, 'r'))
          dbparms[db.to_s][env.to_s]
        end
  
      end
  
    end

  end

end
