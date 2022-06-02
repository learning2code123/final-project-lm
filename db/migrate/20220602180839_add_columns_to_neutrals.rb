class AddColumnsToNeutrals < ActiveRecord::Migration[6.0]
  def change

    add_column :neutral_colors, :category, :string
    add_column :neutral_colors, :color_name, :string
    add_column :neutral_colors, :hex_code, :string
    add_column :neutral_colors, :code_r, :integer
    add_column :neutral_colors, :code_g, :integer
    add_column :neutral_colors, :code_b, :integer


  end
end
