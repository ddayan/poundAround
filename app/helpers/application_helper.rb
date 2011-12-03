module ApplicationHelper
  def next_question(question)
    question.next_question || "/levels/#{question.level.id}/finished"
  end
end
