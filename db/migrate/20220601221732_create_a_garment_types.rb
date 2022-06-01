class CreateAGarmentTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :a_garment_types do |t|
      t.string :garment_type_name

      t.timestamps
    end
  end
end
