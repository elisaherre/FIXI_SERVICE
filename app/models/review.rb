class Review < ApplicationRecord
  belongs_to :user
  belongs_to :request


  validates :user, presence: true
  validates :request, presence: true
  validates :rating, presence: true
  validates :rating, numericality: true
end
