class BestWay < ApplicationRecord
  belongs_to :sacy_vip, optional: true
  belongs_to :brindos_vip, optional: true
  belongs_to :megeve_vip, optional: true
  belongs_to :raba_vip, optional: true
end
