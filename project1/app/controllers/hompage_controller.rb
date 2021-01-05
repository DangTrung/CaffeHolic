class HompageController < ApplicationController
  # Trang Chu ########################
  def index
    # xuat danh sach bai viets
    @news1 = Article.where(status: "public").order(created_at: :DESC).limit(6)
    @news3 = Article.where(status: "public").order(created_at: :DESC).limit(6)
   
    
    
  end
################# show each post func
  def showpost 
    @showpost = Article.find_by(slug: params[:slug]) # truy van dung roi .map
 # B1: find all cate by this art
    @catebynews = Category.where(id: @showpost.article_categories.map{|e| e.category_id})
  #B2: fina all cate by each cate ( cuz n-n realate)
    @relatenew = Article.where( id: @catebynews.map{|i| i.article_ids}, status: :public)
    @news1 = Article.where(status: :public).order(created_at: :DESC).limit(2)
    @newcategory = Category.includes(:article_categories).order(created_at: :DESC).limit(6)

  end
  ################################# Show the cate also list post by cate
  def showcate
    @showcate = Category.find_by(slug: params[:slug]) # tim id cate tuong ung
    @newbycate = @showcate.articles.where(:articles => { :status => "public" } ).paginate(:page => params[:page], :per_page => 10).order('created_at desc')
   # debugger
    @news1 = Article.where(status: "public").order(created_at: :DESC).limit(4)
  
    
  end
 
 
end
