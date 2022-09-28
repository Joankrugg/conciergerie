class CreateVipBrindosBestWays < ActiveRecord::Migration[7.0]
  def change
    create_table :vip_brindos_best_ways do |t|
      t.references :brindos_vip, null: false, foreign_key: true
      t.references :best_way, null: false, foreign_key: true

      t.timestamps
    end
  end
end
