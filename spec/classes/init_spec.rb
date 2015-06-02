require 'spec_helper'
describe 'wiremock' do

  context 'with defaults for all parameters' do
    it { should contain_class('wiremock') }
  end
end
