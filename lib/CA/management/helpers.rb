module CA

  module Management

    module Helpers
      LIB_PATH = File.join(CA::Management::LIB_PATH, 'helpers')
    end

  end

end

%w(
  connection_helper
).each { |f| require File.join(CA::Management::Helpers::LIB_PATH, f) }
