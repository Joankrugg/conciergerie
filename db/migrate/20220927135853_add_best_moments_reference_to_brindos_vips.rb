class AddBestMomentsReferenceToBrindosVips < ActiveRecord::Migration[7.0]
  def change
    add_reference :brindos_vips, :best_moment, foreign_key: true
  end
end
