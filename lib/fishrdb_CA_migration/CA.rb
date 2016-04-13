module FishrdbCAMigration

  module CA
    LIB_PATH = File.join(FishrdbCAMigration::LIB_PATH, 'CA')
  end

end

%w(
).each { |f| require File.join(FishrdbCAMigration::CA::LIB_PATH, f) }
