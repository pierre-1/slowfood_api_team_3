class Api::V0::ProductController < ApplicationController
    def index
      product = Product.all
      render json: product
    end
end