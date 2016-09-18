class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.integer :size_sf
      t.float :monthly_rate
      t.integer :rooms
      t.integer :bathrooms
      t.references :property, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
