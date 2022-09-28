class BestWay < ApplicationRecord
  has_many :vip_brindos_best_ways, dependent: :destroy
  has_many :brindos_vips, through: :vip_brindos_best_ways
end
