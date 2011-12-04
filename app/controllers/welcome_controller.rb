class WelcomeController < ApplicationController
  def index
    session[:level] = 0;
  end
end