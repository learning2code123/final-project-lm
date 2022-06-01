class RenameTypeColumn < ActiveRecord::Migration[6.0]
  def change

    add_column :types, :garment_type, :string

  end
end
