class Room < ApplicationRecord
	has_many :comments, dependent: :delete_all

	validates :topic, presence: true
	validates :description, presence: true
end
