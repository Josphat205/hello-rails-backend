class GreetingsController < ApplicationController
  def hello_index
    @message = Greeting.order('RANDOM()').first
    render json: { message: @message }
  end
end
