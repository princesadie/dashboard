class AddStatusToUnits < ActiveRecord::Migration
  def change
    add_column :units, :status, :string
  end
end
