class CreateRabaVips < ActiveRecord::Migration[7.0]
  def change
    create_table :raba_vips do |t|
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
