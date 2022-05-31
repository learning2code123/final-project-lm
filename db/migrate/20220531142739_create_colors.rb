class CreateColors < ActiveRecord::Migration[6.0]
  def change
    create_table :colors do |t|
      t.string :category
      t.string :color_name
      t.string :hex_code
      t.integer :code_r
      t.integer :code_g
      t.integer :code_b

      t.timestamps
    end
  end
end
