class Customer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers:[:facebook]

  #def self.find_for_facebook_oauth(auth)      
    #customer = Customer.where(provider: auth.provider, uid: auth.uid).first       
# The User was found in our database    
    #return  customer if  customer    
# Check if the User is already registered without Facebook      
    #customer = Customer.where(email: auth.info.email).first 
    #return  customer if customer

    #Customer.create( 
     # name: auth.extra.raw_info.first_name,
     # provider: auth.provider, 
    #  uid: auth.uid,
   #   email: auth.info.email,
  #    password: Devise.friendly_token[0,20])  
 # end
end
