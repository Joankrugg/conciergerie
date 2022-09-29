class AddColumnFirstNameToRabaVip < ActiveRecord::Migration[7.0]
  def change
    add_column :raba_vips, :first_name, :string
  end
end
