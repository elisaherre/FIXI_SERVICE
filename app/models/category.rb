class Category < ApplicationRecord
  has_many :services
  validates :name, presence: true

  has_one_attached :photo
end
