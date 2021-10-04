class Member < ApplicationRecord
	  rolify :before_add => :before_add_method

  def before_add_method(role)
    # do something before it gets added
  end
  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end
  rolify 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
