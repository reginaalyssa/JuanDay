class QuestionsController < ApplicationController
  def start_scene
    @question = Question.find_by(scene_id: 1) 
    @answers = @question.answers
  end

  # def next_scene
  #   session[:scene_id] = params[:scene_id]
  #   @question = Question.find_by(scene_id: params[:scene_id])
  #   @answers = @question.answers
  # end

  def next_scene
    if session[:scene_id].nil?
      session[:scene_id] = 1
      @question = Question.find_by(scene_id: 1)
      @answers = @question.answers
    else 
      session[:scene_id] = params[:scene_id]
      @question = Question.find_by(scene_id: params[:scene_id])
      @answers = @question.answers
    end

    respond_to do |format|
      format.js{}
    end
  end
end
