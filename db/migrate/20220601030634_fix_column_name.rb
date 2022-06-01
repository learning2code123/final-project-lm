class FixColumnName < ActiveRecord::Migration[6.0]
  def change

    rename_column :photos, :type, :garment_type

  end
end
