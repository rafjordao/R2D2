class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user 
  helper_method :bairros
  helper_method :logradouros

  def current_user 
    @current_user ||= User.find(session[:user_id]) if session[:user_id] 
  end
  def bairros
    @bairros = Chamado.select('DISTINCT bairro').map(&:bairro)
  end
  
  def logradouros
    @logradouro = Chamado.select('DISTINCT logradouro').map(&:logradouro)
    
  end
  
  def require_user 
    redirect_to '/login' unless current_user 
  end
  
  def require_logout
    redirect_to '/' if current_user
  end
  
end 
