class DeleteType < ActiveRecord::Migration[6.0]
  def change

    remove_column :types, :type

  end
end
