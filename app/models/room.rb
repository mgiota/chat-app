class Room < ApplicationRecord
	has_many :comments, dependent: :delete_all
	has_many :users

	validates :topic, presence: true
	validates :description, presence: true
end
