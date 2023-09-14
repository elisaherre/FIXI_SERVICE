class Request < ApplicationRecord
  belongs_to :user
  belongs_to :service
  has_many :reviews, dependent: :destroy
  has_many :payments

  validates :user, presence: true
  validates :service, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true
  validates :budget, numericality: true

  STATUS = ["enviada", "aceptada", "reservada", "pendiente", "por pagar", "cancelada", "finalizada"]
  validates :status, inclusion: { in: STATUS }
end
