class Api::V0::PingsController < ApplicationController
  def index
    product = Product.all
    render json: product
  end
end