class BestWay < ApplicationRecord
  has_many :vip_brindos_best_ways, dependent: :destroy
  has_many :brindos_vips, through: :vip_brindos_best_ways
  has_many :megeve_vip_best_ways, dependent: :destroy
  has_many :megeve_vips, through: :megeve_vip_best_ways
end
