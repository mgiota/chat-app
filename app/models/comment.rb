class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates :body, presence: true
	validates :user, presence: true
	validates :room, presence: true

	after_create_commit { CommentUpdateJob.perform_later(self, self.user) }
end
