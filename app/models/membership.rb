class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :room

  def email
    User.find(self.user_id).email
  end

end
