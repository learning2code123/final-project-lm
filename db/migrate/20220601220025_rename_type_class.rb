class RenameTypeClass < ActiveRecord::Migration[6.0]
  def change

    rename_table :types, :garment_type

  end
end
