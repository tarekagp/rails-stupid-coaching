class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
      if @question == "I am going to work"
        @answer = "great!"
      elsif @question.include? "?"
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
  end
end


# The controller will need to read the question from params and compute an instance variable @answer for the view to display.
# Here are two requests that you should be able to handle:

# localhost:3000/answer?question=hello
# localhost:3000/answer?question=what+time+is+it%3F
