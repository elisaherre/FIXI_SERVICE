class Service < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :requests

  validates :user, presence: true
  validates :category, presence: true
  validates :description, presence: true
end
