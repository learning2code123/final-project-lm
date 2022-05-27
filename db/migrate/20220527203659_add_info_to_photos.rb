class AddInfoToPhotos < ActiveRecord::Migration[6.0]
  def change

    add_column :photos, :color_r, :integer
    
  end
end
