class PassRecovery < ApplicationMailer
    default from: 'notifications@example.com'
 
    def recover(user,pass)
        @user = user
        @pass = pass
        puts @user
        mail(to: @user["email"], subject: 'Senha Recuperada')
    end

end
