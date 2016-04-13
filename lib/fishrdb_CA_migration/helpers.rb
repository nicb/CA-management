module FishrdbCAMigration

  module Helpers
    LIB_PATH = File.join(FishrdbCAMigration::LIB_PATH, 'helpers')
  end

end

%w(
  connection_helper
).each { |f| require File.join(FishrdbCAMigration::Helpers::LIB_PATH, f) }
