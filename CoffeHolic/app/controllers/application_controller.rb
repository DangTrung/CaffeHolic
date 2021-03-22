class ApplicationController < ActionController::Base
    def current_order
        if !session[:order_id].nil?
            Order.find(session[:order_id])
        else
            Order.new
        end
    end
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
    def logged_in?
        !current_user.nil?
    end
    def log_out
        session.delete(session[:user_id])
        @current_user = nil
    end
    
end
