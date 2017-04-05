require 'spec_helper'
require_relative '../../app/models/product'

describe 'Product management' do

  let!(:product) { create(:product) }

  it 'should create a product' do
    attrs = attributes_for(:product)
    post '/products', product: attrs
    expect(Product.count).to eq(1)
    #expect { post '/products', :product => attributes_for(:product)}.to change { Product.count }.by(1)
    # expect { post '/products', attributes_for(:product) }.to change { Product.count }.by(1)

    # post '/products', attributes_for(:product)
    #
    # expect(Product.count).to eq(1)

    # post '/products', product
    # expect(last_response.status).to be_ok
    # expect(last_response.body).to be_redirect
  end
end