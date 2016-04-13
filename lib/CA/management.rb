module CA
  module Management
    LIB_PATH = File.expand_path(File.join('..', 'management'), __FILE__)
  end
end

%w(
  version
  helpers
).each { |f| require File.join(CA::Management::LIB_PATH, f) }
