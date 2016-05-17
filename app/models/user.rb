class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   before_save :default_role

 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 enum role: [ :municipality, :customer, :guest]

 
 private 
  
  def default_role
    self.role ||= 1
  end

end
