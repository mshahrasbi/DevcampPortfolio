class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates_presence_of :name

  def first_name
    self.name.split.first
  end
  
  def last_name
    # we should use the first/last here , we can use the split[0]/split[1]
    # but that would cause an error if name was empty of just have first / last name
    self.name.split.last 
  end
end
