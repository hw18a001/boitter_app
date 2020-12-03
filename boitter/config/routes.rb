Rails.application.routes.draw do
  
  #トップページ
  get '/' => 'top#top'
  
  
  #tweet
  #resources :tweets    #自動的割り振りできたが、データベースが反映されなかった
  get 'tweets/index' => 'tweets#index'  #一覧
  get 'tweets/new' => 'tweets#new'      #新規
  get 'tweets/:id' => 'tweets#show'     #詳細
  post 'tweets/create' => 'tweets#create'
  
  #user
  get 'user/signup' => 'user#signup'  #新規登録
  get 'user/login' => 'user#login'    #ログイン
  post 'user/login_form' => 'user#login_form'
  get 'user/mypage/:id' => 'user#mypage'  #マイページ
  post 'user/create' => 'user#create'
  
  
end
