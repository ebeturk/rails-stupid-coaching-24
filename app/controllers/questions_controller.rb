class QuestionsController < ApplicationController
  def ask; end

  def answer
    @user_question = params[:user_question]
    @answer = coach_answer
  end

  def coach_answer
    if @user_question == 'I am going to work'
      'Great!'
    elsif @user_question.end_with?('?')
      'Silly question, get dressed and go to work!'
    elsif @user_question.blank?
      @user_question = "You haven't asked any questions so..."
      "I'll also keep quiet..."
    else
      'I don\'t care, get dressed and go to work!'
    end
  end
end
