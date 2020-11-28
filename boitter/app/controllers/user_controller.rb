class UserController < ApplicationController
  def signup
  end
  
  def login
  end
  
  def mypage
    @user = User.find_by(id: params[:id])
  end
  
  def create
    @user = User.new(name: params[:name], email: params[:email])
    
    
    if @user.save
      redirect_to("/user/mypage/#{@user.id}")
    else
      render("user/signup");
    end
  end
end
