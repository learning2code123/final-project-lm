class RemoveTable < ActiveRecord::Migration[6.0]
  def change

    drop_table :type_combinations

  end
end
