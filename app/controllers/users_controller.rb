class UsersController < ApplicationController 

    def new 
        @user = User.new 
    end 

    def create 
       puts params[:user]['email']
        u = User.find_by_sql(['select * from users where email=?', params[:user]['email']])
        
        usuario = User.find_by_email(params[:user][:email])
        if usuario==nil
            @user = User.new(user_params) 
            if @user.save 
                session[:user_id] = @user.id 
                redirect_to root_url 
            else 
                redirect_to signup_url 
            end 
        else
            redirect_to signup_url 
        end
    end 

    private 
        def user_params 
            params.require(:user).permit(:first_name, :last_name, :email, :password)
        end 
end