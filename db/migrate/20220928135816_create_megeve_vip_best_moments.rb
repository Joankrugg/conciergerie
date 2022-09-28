class CreateMegeveVipBestMoments < ActiveRecord::Migration[7.0]
  def change
    create_table :megeve_vip_best_moments do |t|
      t.references :megeve_vip, null: false, foreign_key: true
      t.references :best_moment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
