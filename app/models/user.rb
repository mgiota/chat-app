class User < ApplicationRecord
	has_one_attached :profile_pic
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :comments
  # belongs_to :room

  def online?
    return email
  end


  def username
  	return first_name
  end
end
