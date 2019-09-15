class WorksController < ApplicationController
  
  def new
    @product = Product.find(params[:product_id])
    @work = Work.new
  end

  def create
    @product = Product.find(params[:product_id])

    @work = @product.works.new(work_params)
    if @work.save
      flash[:notice] = "登録完了！"
    else
      render action :new
    end
  end

  private
  def work_params
    params.require(:work).permit(:text, :image).merge(product_id:params[:product_id])
  end
end
