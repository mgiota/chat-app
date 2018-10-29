class Room < ApplicationRecord
	has_many :comments, dependent: :delete_all

end
