class QuestionsController < InheritedResources::Base
  def answer
    @question = Question.find(params[:id])
    session[@question.id] = (params[:answer] == @question.answer)
    redirect_to next_question(@question)
  end
end