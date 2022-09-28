class SacyVip < ApplicationRecord
  has_many :sacy_vip_best_ways, dependent: :destroy
  has_many :best_ways, through: :sacy_vip_best_ways
  has_many :sacy_vip_best_moments, dependent: :destroy
  has_many :best_moments, through: :sacy_vip_best_moments
end
