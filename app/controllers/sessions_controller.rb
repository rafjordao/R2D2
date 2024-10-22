class SessionsController < ApplicationController
  
  before_action :require_logout, only: [:new,:create]
  
  def new
  end
  
  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:success] = "Usuário, #{@user.first_name} logado com sucesso!"
      redirect_to '/'
    else
      flash[:error] = "E-mail e/ou Senha não válidos!"
      redirect_to '/login'
    end 
  end
  def destroy 
    session[:user_id] = nil 
    flash[:success] = "logout"
    redirect_to '/' 
  end
  
  def createG
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroyG
    session[:user_id] = nil
    redirect_to root_path
  end
  
end
