class ProductsController < ApplicationController
  before_action :current_admin_user?,except: [:index,:show]
  before_action :set_product,except: [:index,:new, :create]

  def index 
    @products = Product.all.limit(4)
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @product.product_images.build
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to action: :new
    end
  end

  def edit
    @product.product_images.build
  end

  def update
    if @product.update(product_params)
      redirect_to root_path
    end
  end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  private
  def product_params
    params.require(:product).permit(:name,:text,:image,:date,:place,:purpose,:scale,:site_area,:building_area,:architectural_area, product_images_attributes: [:_destroy,:id,:src])
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def current_admin_user?
    redirect_to root_path unless current_admin_user
  end 

end
