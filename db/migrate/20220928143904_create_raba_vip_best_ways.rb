class CreateRabaVipBestWays < ActiveRecord::Migration[7.0]
  def change
    create_table :raba_vip_best_ways do |t|
      t.references :raba_vip, null: false, foreign_key: true
      t.references :best_way, null: false, foreign_key: true

      t.timestamps
    end
  end
end
