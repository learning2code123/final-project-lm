class AddBtoPhoto < ActiveRecord::Migration[6.0]
  def change

    add_column :photos, :color_b, :integer

  end
end
