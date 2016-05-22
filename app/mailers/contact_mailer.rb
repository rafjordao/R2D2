class ContactMailer < ActionMailer::Base
  default :from => 'roberto.o.s.f@gmail.com'

  def contact_message(contact)
    @contact = contact
    mail(:to => @contact['email'],:subject => 'Mensagem de Contato')
  end
end