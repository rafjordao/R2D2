class ContactMailer < ActionMailer::Base
  

  def contact_message(contact)
    @contact = contact
    mail(:from => contact.email ,:to => 'watchlurb@gmail.com',:subject => 'Mensagem de Contato')
  end
end