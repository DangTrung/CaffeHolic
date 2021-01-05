module ApplicationHelper

    def status_buttons  role, i
        return ["pending"] if role != "admin" && i.status == "draft"
        return [] if role != "admin" && i.status == "pending"
        return [] if role != "admin" && i.status == "public"
        a = ["public", "pending", "draft"]
        a.delete(i.status)
        a
    end
    def allcate
        @allcate = Category.all
      end
      def news
        @news = Article.includes(:categories).where(status: "public").limit(3)
        
      end
      def news2
        @news2 = news2 = Article.where(status: "public").order(created_at: :ASC).limit(3)
      end
      def  cate
        @cate = Category.includes(:children).where(parent_id: params[nil])
      end

end
