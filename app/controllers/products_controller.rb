class ProductsController < ApplicationController
  def index
    @category = params[:category]
    @products = Product.all
  end
end
