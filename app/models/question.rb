class Question < ActiveRecord::Base
  validates :description,  :presence => true
  validates :answer, :presence => true
end