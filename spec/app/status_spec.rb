require 'spec_helper'
require 'rack/test'

describe 'Status Controller' do

  include Rack::Test::Methods

  def app
    Sinatra::Application
    StatusController.new
  end

  context 'displays status' do

    it 'should returns the current status' do
      get '/status'

      last_response.status.should == 200
      last_response.body.should match /testing/
    end

  end
end