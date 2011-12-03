class CreateLevels < ActiveRecord::Migration
  def self.up
    create_table :levels do |t|
      t.string :name
      t.string :continent
      t.string :country_1
      t.string :country_2

      t.timestamps
    end
  end

  def self.down
    drop_table :levels
  end
end
