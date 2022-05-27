class AddGtoPhoto < ActiveRecord::Migration[6.0]
  def change

    add_column :photos, :color_g, :integer

  end
end
