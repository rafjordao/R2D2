class UsersController < ApplicationController 
    
    before_action :require_user, only: [:edit,:show,:update]
    
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
        u =  User.find_by(email: current_user.email).try(:authenticate,params[:user][:password])
        if u!=false
            if params[:user].has_key?(:new_password)
                password_change
            end
            @user = User.find(current_user.id)
            if @user.update_attributes(user_params)
          # Handle a successful update.
                flash[:success] = "Seus dados foram alterados com sucesso!"
                render 'edit'
             else
                render 'edit'
             end
        else
            flash[:success] = "Senha inválida!"
           @user = User.find(current_user.id)
           render 'edit'
        end
      
    end
         
    def create 

        puts params[:user][:password] == params[:user][:password_confirmation]
        
        
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
    
    def password_change
       params[:user][:password]=params[:user][:new_password]
       params[:user].except!(:new_password)
    end

    private 
        def user_params 
            params.require(:user).permit(:first_name, :last_name, :email, :password, :new_password)
        end 
end