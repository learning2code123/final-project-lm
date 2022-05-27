class IncludeHexCode < ActiveRecord::Migration[6.0]
  def change

    add_column :photos, :hex_code, :string

  end
end
