class AddLevelIdToQuestions < ActiveRecord::Migration
  def self.up
    add_column :questions, :level_id, :integer
  end

  def self.down
    remove_column :questions, :level_id
  end
end
