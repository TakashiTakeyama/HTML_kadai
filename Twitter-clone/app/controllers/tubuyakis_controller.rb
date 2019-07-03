class TubuyakisController < ApplicationController
  def new
    @tubuyaki = Tubuyaki.new
  end

  def create
    Tubuyaki.create(content: params[:tubuyaki][:content])
  end
end
