class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|

      t.timestamps null: false
    end
  end
end
