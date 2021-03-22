class SessionsController < ApplicationController
    def new
        if logged_in?
            #code here
        end
    end
    def create
        @user = User.find_by(email: params[:session][:email].downcase)
        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
        else
            flash[:danger] = 'Invalid email/password combination'
            render 'new'
        end
    end
    def destroy
        log_out
    end

end
