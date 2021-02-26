module ApplicationHelper
    def current_order
        if !session[:order_id].nil?
            Order.find(session[:order_id])
        else
            Order.new
        end
    end
    def category
        @category = Category.all
    end
end
