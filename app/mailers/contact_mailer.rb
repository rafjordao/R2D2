class ContactMailer < ActionMailer::Base
  default :from => 'watchlurb@gmail.com'

  def contact_message(contact)
    @contact = contact
    mail(:to => 'watchlurb@gmail.com',:subject => 'Mensagem de Contato')
  end
end