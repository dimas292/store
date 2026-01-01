class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @category = params[:category]
    @products = Product.all
  end


  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
     @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render :new, status:
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product
    else
      render :new, status:
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :size_start, :size_end, :category, :price, :discount, :rating)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
