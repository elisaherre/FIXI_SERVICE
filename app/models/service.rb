class Service < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :requests, dependent: :destroy

  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :description, presence: true
  validates :category_id, uniqueness: { scope: :user_id,
                                        message: "ya existe un servicio de esta categoría" }
end
