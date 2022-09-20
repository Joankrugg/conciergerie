class CreateVips < ActiveRecord::Migration[7.0]
  def change
    create_table :vips do |t|
      t.string :name
      t.string :first_name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
