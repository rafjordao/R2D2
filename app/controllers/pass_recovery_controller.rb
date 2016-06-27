class PassRecoveryController < ApplicationController
    require 'securerandom'
    def new
        @password_recovery = User.new 
    end
    
    def sends
        valid = User.find_by_email(params["user"]["email"].to_s)
        if valid != nil
            pass =SecureRandom.base64(6)
           
            my_password = BCrypt::Password.create(pass)
            
            valid[:password_digest]=my_password
         
           
            valid.save!
            PassRecovery.recover(valid,pass).deliver_now
            flash[:notice] = 'Senha enviada para o e-mail de origem'
            redirect_to :action => 'new'
            return  
        end
        
        redirect_to root_path
    end
    
    def password_change(pass)
       params[:user][:password]=pass
    end
    
    
    private 
        def pass_params 
            params.require(:user).permit(:email)
        end 
end
