class StatusController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, File.expand_path('../../views', __FILE__)

  get '/status' do
    @status = Status.new
    @status.message = "testing"
    @status.save
    erb :status
  end
end