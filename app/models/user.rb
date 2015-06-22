class User < ActiveRecord::Base
  devise :omniauthable, omniauth_providers: [:google_oauth2]
  
end
