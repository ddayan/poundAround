class QuestionsController < ApplicationController
  def index
    @questions=Question.all
  end
  def show
  end
  def new
    @question = Question.new
  end
  def create
    @question = Question.new(params[:question])

    respond_to do |format|
      if @question.save
        format.html  { redirect_to(questions_path,
                      :notice => 'Post was successfully created.') }
      else
        format.html  { render :action => "new" }
      end
    end
  end
end