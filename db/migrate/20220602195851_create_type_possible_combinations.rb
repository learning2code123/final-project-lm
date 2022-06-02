class CreateTypePossibleCombinations < ActiveRecord::Migration[6.0]
  def change
    create_table :type_possible_combinations do |t|
      t.string :type_garment_1
      t.string :type_garment_2
      t.string :type_garment_3

      t.timestamps
    end
  end
end
