class CreateMegeveVips < ActiveRecord::Migration[7.0]
  def change
    create_table :megeve_vips do |t|
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
