class User < ActiveRecord::Base
    has_secure_password
   def self.from_omniauth(auth)
        
        puts auth.info.name
        
        user = User.find_by email: auth.info.email
        if user == nil
             user = User.new
             user.first_name = auth.info.first_name
             user.last_name = auth.info.last_name
             user.email = auth.info.email
             user.password = auth['uid']
             if auth['provider']=='facebook'
                 arr = auth.info.name.split(' ')
                  user.first_name = arr[0]  
                  user.last_name = arr[1]
             end
             user.save!
             return user
        else
            
             
            
             
             
        end
        
        return user
    end 
    
end
