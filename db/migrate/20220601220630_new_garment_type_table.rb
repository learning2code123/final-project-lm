class NewGarmentTypeTable < ActiveRecord::Migration[6.0]
  def change
    create_table :garment_types do |g_t|
      g_t.string :garment_type_name

      g_t.timestamps
    end
  end
end
