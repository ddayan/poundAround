class Question < ActiveRecord::Base
  validates :description,  :presence => true
  validates :answer, :presence => true
  
  belongs_to :level
  
  def next_question
    level.questions.where('questions.id > ?', self.id).first 
  end
end