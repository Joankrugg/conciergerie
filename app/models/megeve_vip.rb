class MegeveVip < ApplicationRecord
  has_many :megeve_vip_best_ways, dependent: :destroy
  has_many :best_ways, through: :megeve_vip_best_ways
  has_many :megeve_vip_best_moments, dependent: :destroy
  has_many :best_moments, through: :megeve_vip_best_moments
  validates :email, format: { with:  /\A[^@\s]+@[^@\s]+\z/}, presence: true
end
