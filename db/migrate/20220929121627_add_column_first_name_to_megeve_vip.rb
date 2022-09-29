class AddColumnFirstNameToMegeveVip < ActiveRecord::Migration[7.0]
  def change
    add_column :megeve_vips, :first_name, :string
  end
end
