class LevelsController < InheritedResources::Base
  def show
    @level = Level.find(params[:id])
    redirect_to @level.questions.first if @level.questions.any?
  end
  
  def finished
    @level = Level.find(params[:id])
  end
end