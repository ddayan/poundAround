class LevelsController < InheritedResources::Base
   def index
     # session[:level] = 0 if session[:level] > Level.count #dynamic.....
     
   end
  
   def answer
     level = Level.find(params[:id])
     session[level.question.id] = (params[:answer] == level.question.answer)
     session[:level] = session[:level] + 1
     redirect_to levels_path
   end
  
  def show
    @level = Level.find(params[:id])
    @question = @level.question
#    redirect_to @level.questions.first if @level.questions.any?
  end
  
  def finished
    @level = Level.find(params[:id])
  end
end