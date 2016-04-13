require 'spec_helper'

describe CA::Management::Helpers::ConnectionHelper do

  include CA::Management::Helpers::ConnectionHelper

  before :example do
    @conn_parms = YAML.load(File.open(CA::Management::Helpers::ConnectionHelper::DATABASE_CONFIG_FILE, 'r'))
  end

  it 'returns the proper connection parameters' do
    testing_args = [[:ca, :development], [:ca, :test], [:fishrdb, :development]]
    testing_args.each { |db, env| expect(connection_parameters(db, env)).to eq(@conn_parms[db.to_s][env.to_s]) }
  end

end
