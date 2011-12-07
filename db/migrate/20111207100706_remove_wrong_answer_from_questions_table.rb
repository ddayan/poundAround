class RemoveWrongAnswerFromQuestionsTable < ActiveRecord::Migration
  def self.up
    remove_column :questions, :incorrect_answer
  end

  def self.down
    add_column :questions, :incorrect_answer, :string
  end
end
