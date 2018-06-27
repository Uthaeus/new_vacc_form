class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :discussion

  validates :content, presence: true, length: { minimum: 2, maximum: 250 }

  after_create_commit { CommentBroadcastJob.perform_later(self) }
end
