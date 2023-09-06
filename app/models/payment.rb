class Payment < ApplicationRecord
  belongs_to :request

  validates :request, presence: true
  validates :status, presence: true
  validates :amount, presence: true
  validates :amount, numericality: true
end
