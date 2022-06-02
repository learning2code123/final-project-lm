class CreateNeutralColors < ActiveRecord::Migration[6.0]
  def change
    create_table :neutral_colors do |t|

      t.timestamps
    end
  end
end
