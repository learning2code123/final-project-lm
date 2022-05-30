class ChangeGarmentToString2 < ActiveRecord::Migration[6.0]
  def change

    remove_column :looks, :garment_2
    add_column :looks, :garment_2, :integer

    remove_column :looks, :garment_3
    add_column :looks, :garment_3, :integer

    remove_column :looks, :garment_4
    add_column :looks, :garment_4, :integer

    remove_column :looks, :garment_5
    add_column :looks, :garment_5, :integer


  end
end
