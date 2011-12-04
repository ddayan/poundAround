class QuestionsController < InheritedResources::Base
  def answer
    @question = Question.find(params[:id])
    session[@question.id] = (params[:answer] == @question.answer)
    session[:level] = session[:level] + 1
    # redirect_to next_question(@question)
    redirect_to levels_path
  end
end