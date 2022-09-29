class AddColumnNameToMegeveVip < ActiveRecord::Migration[7.0]
  def change
    add_column :megeve_vips, :name, :string
  end
end
