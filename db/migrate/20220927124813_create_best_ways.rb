class CreateBestWays < ActiveRecord::Migration[7.0]
  def change
    create_table :best_ways do |t|
      t.string :name

      t.timestamps
    end
  end
end
