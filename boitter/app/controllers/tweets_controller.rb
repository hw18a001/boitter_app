class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    #@tweets = ["hello","こんにちは"]
  end
  
  def show
    @tweet = Tweet.find_by(id:params[:id])
  end
end
