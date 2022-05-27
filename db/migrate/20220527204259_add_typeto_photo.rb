class AddTypetoPhoto < ActiveRecord::Migration[6.0]
  def change

    add_column :photos, :type, :string

  end
end
