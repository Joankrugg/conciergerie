class AddColumnFirstNameToSacyVip < ActiveRecord::Migration[7.0]
  def change
    add_column :sacy_vips, :first_name, :string
  end
end
