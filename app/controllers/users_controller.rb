class UsersController < ApplicationController 

    def new 
        @user = User.new 
    end 
    
    def edit
        @user = User.find(current_user.id)
     end
   
     def show
      @user = User.find(current_user.id)
     end
   
    def update
       puts"updatee"
        u =  User.find_by(email: params[:user][:email] ).try(:authenticate,params[:user][:password] )
        if u!=false
            @user = User.find(current_user.id)
            if @user.update_attributes(user_params)
          # Handle a successful update.
                render 'edit'
             else
                render 'edit'
             end
        else
           @user = User.find(current_user.id)
           render 'edit'
        end
      
    end
         
    def create 
        usuario = User.find_by_email(params[:user][:email])
        if usuario==nil
            @user = User.new(user_params) 
            if @user.save 
                session[:user_id] = @user.id 
                flash[:success] = "Cadastro feito com sucesso! #{@user.first_name} você será redirecionado."
                redirect_to root_url 
            else 
                redirect_to signup_url
            end 
        else
            flash[:error] = "Usuário já cadastrado!"
            redirect_to signup_url 
        end
    end 

    private 
        def user_params 
            params.require(:user).permit(:first_name, :last_name, :email, :password)
        end 
end