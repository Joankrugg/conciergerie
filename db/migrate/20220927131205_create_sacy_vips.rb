class CreateSacyVips < ActiveRecord::Migration[7.0]
  def change
    create_table :sacy_vips do |t|
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
