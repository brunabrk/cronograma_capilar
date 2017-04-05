require 'spec_helper'

describe 'Status Controller' do

  def app
    Sinatra::Application
    StatusController.new
  end

  context 'displays status' do

    it 'should return the current status' do
      get '/status'

      expect(last_response.status).to eq(200)
      expect(last_response.body).to match(/testing/)
    end

  end
end