module FishrdbCAMigration

  module Fishrdb
    LIB_PATH = File.join(FishrdbCAMigration::LIB_PATH, 'fishrdb')
  end

end

%w(
).each { |f| require File.join(FishrdbCAMigration::Fishrdb::LIB_PATH, f) }
