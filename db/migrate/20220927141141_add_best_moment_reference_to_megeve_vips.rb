class AddBestMomentReferenceToMegeveVips < ActiveRecord::Migration[7.0]
  def change
    add_reference :megeve_vips, :best_moment, foreign_key: true
  end
end
