class CreateColorCombinations < ActiveRecord::Migration[6.0]
  def change
    create_table :color_combinations do |t|
      t.string :category_id
      t.string :base_color_name
      t.string :base_color_hex
      t.integer :base_color_r
      t.integer :base_color_g
      t.integer :base_color_b
      t.string :combination_color_name
      t.string :hex_combination_color
      t.integer :combination_color_r
      t.integer :combination_color_g
      t.integer :combination_color_b

      t.timestamps
    end
  end
end
