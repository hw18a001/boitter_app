class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    @tweet = Tweet.find_by(id:params[:id])
    #@user = User.find_by(id: params[:@tweet.user_id])
    #@tweets = ["hello","こんにちは"]
  end
  
  def show
    @tweet = Tweet.find_by(id:params[:id])
  end
  
  def new
  end
  
  def create
    #新規投稿時、ログインユーザのidを@current_userで取得
      @current_user = User.find_by(id: session[:user_id])
  
    @tweet = Tweet.new(
      content: params[:content],
      user_id: @current_user.id
    )
    
    
    if @tweet.save
      redirect_to("/tweets/index")
    else
      render("tweets/new");
    end
  end
end
