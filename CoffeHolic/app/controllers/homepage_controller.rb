class HomepageController < ApplicationController
  def index
    @category = Category.all
  end
  def contact
  end
  def about
  end
  def product
    @product = Product.all
    @category = Category.all
  end
  def category
    @category = Category.all
    @categorydetail = Category.find_by(id: params[:id])
  end
  def productdetail
    @product = Product.find_by(id: params[:id])
  end
 
end
