class Service < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :requests

  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :description, presence: true
  validates :category_id, uniqueness: { scope: :category_id,
                                        message: "ya existe un servicio de esta categoría" }
end
