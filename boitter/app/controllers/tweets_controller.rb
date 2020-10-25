class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    #@tweets = ["hello","こんにちは"]
  end
  
  def show
  end
end
