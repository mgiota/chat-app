class Room < ApplicationRecord
	has_many :memberships
	has_many :comments, dependent: :delete_all
	has_many :users, through: :memberships

	validates :topic, presence: true
	validates :description, presence: true
end
