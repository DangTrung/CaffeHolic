class ProductController < ApplicationController
  def index
    @product = Product.all
  end

  def show
    @product = Product.find_by(id: params[:id])
    
  end
end
