class BestMoment < ApplicationRecord
  has_many :vip_brindos_best_moments, dependent: :destroy
  has_many :brindos_vips, through: :vip_brindos_best_moments
end
