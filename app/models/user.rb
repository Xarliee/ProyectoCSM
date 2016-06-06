class User < ActiveRecord::Base
  has_many :products
  has_many :craftsmen
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  #User.invite!(:email => "new_user@platan.us")
  

  enum role: [ :municipality, :customer, :guest]

 
 private 
  
  def default_role
    self.role ||= 1
  end

end
