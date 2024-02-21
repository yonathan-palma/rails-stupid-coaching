# frozen_string_literal: true

# app/controller/questions_controller.rb
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @ask = params[:ask] if params[:ask]
    @parametros = params
    @answer = if @ask == 'Great!'
                ''
              elsif @ask.end_with?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
