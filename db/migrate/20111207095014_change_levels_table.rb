class ChangeLevelsTable < ActiveRecord::Migration
  def self.up
    drop_table :levels
    create_table :levels do |t|
      t.string :name
      t.float :currency_val
      t.string :currency_sym
    end
  end

  def self.down
    drop_table :levels
    create_table :levels do |t|
      t.string :name
      t.string :continent
      t.string :country_1
      t.string :country_2
      t.timestamps
    end
  end
end
