class UserController < ApplicationController
  def signup
  end
  
  def login
  end
  
  def login_form
      @user = User.find_by(
            name: params[:name],
            password: params[:password]
          )
      
      if @user  #userが見つかったら
        redirect_to("/tweets/index")
      else
        render("user/login");
      end
  end
  
  def mypage
    @user = User.find_by(id: params[:id])
  end
  
  def create
    @user = User.new(
              name: params[:name],
              email: params[:email],
              image_name: "default.png"
            )
    
    if @user.save
      redirect_to("/user/mypage/#{@user.id}")
    else
      render("user/signup");
    end
  end
end
