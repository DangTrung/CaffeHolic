class HomepageController < ApplicationController
  def index
  end
  def contact 
  end
  def about
  end
  def category
    @categorydetail = Category.find_by(id: params[:id])
  end
 
end
