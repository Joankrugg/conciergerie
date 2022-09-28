class RabaVip < ApplicationRecord
  has_many :raba_vip_best_ways, dependent: :destroy
  has_many :best_ways, through: :raba_vip_best_ways
  has_many :raba_vip_best_moments, dependent: :destroy
  has_many :best_moments, through: :raba_vip_best_moments
end
