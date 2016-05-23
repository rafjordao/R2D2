class ContactsController < ApplicationController

    before_action :require_user, only: [:create,:new]

    def new
      @contact = Contact.new
      @user = User.find(current_user.id)
    end
  
    def create
      @contact = Contact.new(params[:contact])
  
     if @contact.valid?
       ContactMailer.contact_message("watchlurb@gmail.com").deliver_now
       flash[:notice] = 'Mensagem enviado com sucesso'
       redirect_to :action => 'new'
       return  
     end
 
     render :action => 'mew'
   end
end