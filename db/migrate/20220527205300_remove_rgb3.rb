class RemoveRgb3 < ActiveRecord::Migration[6.0]
  def change

    remove_column :photos, :color_b

  end
end
