class Chatroom < ApplicationRecord
  belongs_to :request
  has_many :messages

  validates :request, presence: true
end
