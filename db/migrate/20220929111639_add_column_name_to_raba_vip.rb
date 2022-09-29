class AddColumnNameToRabaVip < ActiveRecord::Migration[7.0]
  def change
    add_column :raba_vips, :name, :string
  end
end
