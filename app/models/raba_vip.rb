class RabaVip < ApplicationRecord
  has_many :best_ways, dependent: :destroy
  has_many :best_moments, dependent: :destroy
end
