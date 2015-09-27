class QuestionsController < ApplicationController
  def start_scene
    @question = Question.find_by(scene_id: 1) 
    @answers = @question.answers
  end

  def next_scene
    if session[:scene_count].nil?
      session[:scene_count] = 1
    else
      session[:scene_count] += 1
    end
    
    if session[:scene_id].nil?
      session[:scene_id] = 1
      @question = Question.find_by(scene_id: 1)
      @answers = @question.answers
    else
      if session[:scene_id] == "17"
        session[:scene_count] = 1
      end 
      @id = "#{session[:scene_id]}_#{params[:scene_id]}"
      session[:scene_id] = params[:scene_id]
      @question = Question.find_by(scene_id: params[:scene_id])
      @answers = @question.answers
    end

    respond_to do |format|
      format.js{}
    end
  end
end
