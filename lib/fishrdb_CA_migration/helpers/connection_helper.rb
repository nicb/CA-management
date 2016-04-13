require 'yaml'

module FishrdbCAMigration

  module Helpers

    module ConnectionHelper

      DATABASE_CONFIG_FILE = File.expand_path(File.join(['..'] * 4, 'config', 'databases.yml'), __FILE__)

      def connection_parameters(db, env = ENV['FISHRDB_CA_MIGRATION_ENV'] || 'development')
        dbparms = YAML.load(File.open(DATABASE_CONFIG_FILE, 'r'))
        dbparms[db.to_s][env.to_s]
      end

    end

  end

end
