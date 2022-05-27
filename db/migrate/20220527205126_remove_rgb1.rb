class RemoveRgb1 < ActiveRecord::Migration[6.0]
  def change

    remove_column :photos, :color_r

  end
end
