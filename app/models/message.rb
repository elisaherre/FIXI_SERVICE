class Message < ApplicationRecord
  belongs_to :chatroom

  validates :content, presence: true
  validates :chatroom, presence: true
end
