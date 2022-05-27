class RemoveRgb2 < ActiveRecord::Migration[6.0]
  def change

    remove_column :photos, :color_g

  end
end
