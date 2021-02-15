class QuestionsController < ApplicationController
  def ask
    # @input = param[:input]
  end

  def answer
    @answer = params[:answer]
    @coach_answer = coach_answer
  end

  def coach_answer
    until @answer == 'I am going to work right now!'
      if @answer.end_with?('?')
        return 'Silly question, get dressed and go to work!'
      else
        return "I don't care, get dressed and go to work!"
      end
    end
    return ""
  end
end
