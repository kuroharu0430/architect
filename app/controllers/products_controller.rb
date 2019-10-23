class ProductsController < ApplicationController
  before_action :set_product,except: [:index,:new, :create]
  def index 
    @products = Product.all.limit(4)
  end

  def show
    @product = Product.find(params[:id])
    
  end

  def new
    @product = Product.new
    @product.works.build
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to action: :new
    end
  end

  def edit
    @product.works.build
  end

  def update
    if @product.update(product_params)
      redirect_to root_path
    end
  end

  private
  def product_params
    params.require(:product).permit(:name,:text,:image,:date,:place,:purpose,:scale,:site_area,:building_area,:architectural_area, works_attributes: [:_destroy,:id,:image])
  end

  def set_product
    @product = Product.find(params[:id])
  end

end
