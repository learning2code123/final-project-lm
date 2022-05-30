class ChangeGarmentToString < ActiveRecord::Migration[6.0]
  def change

    remove_column :looks, :garment_1
    add_column :looks, :garment_1, :integer

  end
end
