class QuizController < ApplicationController
  def index
    session[:score] = 0
    session[:question_ids] = Question.pluck(:id).first(10)
    puts "Question IDs: #{session[:question_ids].inspect}" # デバッグ用の出力
    redirect_to quiz_path(id: session[:question_ids].first)
  end

  def show
    @question = Question.find(params[:id])
    @current_question_number = session[:question_ids].index(params[:id].to_i) + 1
  end

  def answer
    question = Question.find(params[:id])
    puts "Submitted Answer: #{params[:answer]}, Correct Answer: #{question.ruby}" # デバッグ用の出力
    if question.ruby == params[:answer]
      session[:score] = session[:score].to_i + 1
    end
  
    next_question_index = session[:question_ids].index(params[:id].to_i) + 1
    if next_question_index < session[:question_ids].size
      redirect_to quiz_path(id: session[:question_ids][next_question_index])
    else
      redirect_to result_quiz_index_path
    end
  end

  def result
    @score = session[:score]
  end
end
