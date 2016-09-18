class AddMainImageToUnits < ActiveRecord::Migration
  def self.up
    change_table :units do |t|
      t.attachment :main_image
    end
  end

  def self.down
    remove_attachment :units, :main_image
  end
end
