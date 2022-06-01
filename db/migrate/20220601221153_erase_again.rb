class EraseAgain < ActiveRecord::Migration[6.0]
  def change

    drop_table :garment_types

  end
end
