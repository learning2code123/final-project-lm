class CreateLooks < ActiveRecord::Migration[6.0]
  def change
    create_table :looks do |t|
      t.string :garment_1
      t.string :garment_2
      t.string :garment_3
      t.string :garment_4
      t.string :garment_5
      t.string :description

      t.timestamps
    end
  end
end
