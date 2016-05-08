class SessionsController < ApplicationController
  def new
  end
  
  def create
    puts "sessio entrei"
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:success] = "Usuário, #{@user.first_name} logado com sucesso!"
      redirect_to '/'
    else
      redirect_to '/login'
    end 
  end
  def destroy 
    session[:user_id] = nil 
    flash[:success] = "logout"
    redirect_to '/' 
  end
end
