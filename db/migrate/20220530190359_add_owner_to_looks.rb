class AddOwnerToLooks < ActiveRecord::Migration[6.0]
  def change
    add_column :looks, :owner_id, :integer
  end
end
