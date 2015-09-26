class QuestionsController < ApplicationController
  def start_scene
    @question = Question.find(1) 
    @answers = @question.answers
  end
end
