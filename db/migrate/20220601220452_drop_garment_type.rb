class DropGarmentType < ActiveRecord::Migration[6.0]
  def change

    drop_table :garment_type

  end
end
