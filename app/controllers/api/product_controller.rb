class Api::ProductController < ApplicationController
    def index
      product = Product.all
      render json: { products: product }
    end
end