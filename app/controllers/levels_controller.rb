class LevelsController < InheritedResources::Base
   def index
     # session[:level] = 0 if session[:level] > Level.count #dynamic.....
     
   end
  
  def show
    @level = Level.find(params[:id])
    redirect_to @level.questions.first if @level.questions.any?
  end
  
  def finished
    @level = Level.find(params[:id])
  end
end