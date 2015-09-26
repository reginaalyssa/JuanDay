class QuestionsController < ApplicationController
  def start_scene
    @question = Question.find_by(scene_id: 1) 
    @answers = @question.answers
  end
end
