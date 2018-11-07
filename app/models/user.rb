class User < ApplicationRecord
	has_one_attached :profile_pic
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_many :comments
	has_many :memberships
	has_many :rooms, through: :memberships

  after_update_commit {AppearanceBroadcastJob.perform_later self}

  def is_online
    self.update_attributes(online: true)
  end

  def is_offline
    self.update_attributes(online: false)
  end

  def username
  	return first_name
  end
end
