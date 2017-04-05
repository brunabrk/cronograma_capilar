class ProductController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, File.expand_path('../../views', __FILE__)

  post '/products' do
    product = Product.create(params)
    if product.save
      erb :product
    end
  end

end