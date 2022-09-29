class AddColumnNameToSacyVip < ActiveRecord::Migration[7.0]
  def change
    add_column :sacy_vips, :name, :string
  end
end
