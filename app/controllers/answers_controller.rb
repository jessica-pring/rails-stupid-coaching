class AnswersController < ApplicationController
  def answer
    @question = params[:question]
    coach = ['Great!', 'Silly question, get dressed and go to work!', 'I don\'t care, get dressed and go to work!']

    if @question == "I am going to work!"
      @answer = coach[0]
    elsif @question.end_with?("?")
      @answer = coach[1]
    else
      @answer = coach[2]
    end
  end
end
