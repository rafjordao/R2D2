class ContactMailer < ActionMailer::Base
  

  def contact_message(contact)
    @contact = contact
    puts contact.email

    mail(:from => contact.email ,:to => 'watchlurb@gmail.com',:subject => 'Mensagem de Contato')
  end
end