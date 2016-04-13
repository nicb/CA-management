require "fishrdb_CA_migration/version"

module FishrdbCAMigration
  LIB_PATH = File.expand_path(File.join('..', 'fishrdb_CA_migration'), __FILE__)
end

%w(
  version
  helpers
  CA
  fishrdb
).each { |f| require File.join(FishrdbCAMigration::LIB_PATH, f) }
