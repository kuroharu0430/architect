class ProductsController < ApplicationController
  before_action :set_product,except: [:index,:new, :create]
  def index 
    @products = Product.all.limit(4)
  end

  def show
    @works =@product.works.all
    
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
  end

  def edit
  end

  def update
    @product = Product.update(product_params)
    redirect_to root_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :title ,:text, :image)
  end

  def set_product
    @product = Product.find(params[:id])
  end

end
