class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    #@tweets = ["hello","こんにちは"]
  end
  
  def show
    @tweet = Tweet.find_by(id:params[:id])
  end
  
  def new
  end
  
  def create
    @tweet = Tweet.new(content: params[:content])
    
    @tweet.save
    redirect_to("/tweets/index")
  end
end
