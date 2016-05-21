class ContactMailer < ActionMailer::Base
  default :from => 'roberto.o.s.f@gmail.com'

  def contact_message(contact)
    @contact = contact
    mail(:to => 'roberto.o.s.f@gmail.com', :subject => 'Mensagem de Contato')
  end
end