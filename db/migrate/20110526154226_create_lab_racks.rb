class CreateLabRacks < ActiveRecord::Migration
  def self.up
    create_table :lab_racks do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :lab_racks
  end
end
