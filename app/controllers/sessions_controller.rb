class SessionsController < ApplicationController
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
end
