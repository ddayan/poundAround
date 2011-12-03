class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def next_question(question)
    question.next_question ? question.next_question : "/levels/#{question.level.id}/finished"
  end
end
