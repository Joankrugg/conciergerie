class BrindosVip < ApplicationRecord
  has_many :vip_brindos_best_ways, dependent: :destroy
  has_many :best_ways, through: :vip_brindos_best_ways
  has_many :vip_brindos_best_moments, dependent: :destroy
  has_many :best_moments, through: :vip_brindos_best_moments
  validates :email, format: { with:  /\A[^@\s]+@[^@\s]+\z/}, presence: true
end
