class AddIncorrectAnswerToQuestion < ActiveRecord::Migration
  def self.up
    add_column :questions, :incorrect_answer, :string
  end

  def self.down
    remove_column :questions, :incorrect_answer
  end
end
