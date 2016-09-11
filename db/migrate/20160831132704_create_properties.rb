class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zipcode
      t.references :user, index: true, foreign_key: true
      t.attachment :main_image

      t.timestamps null: false
    end
  end
end
