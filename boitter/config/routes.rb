Rails.application.routes.draw do
  
  #トップページ
  get '/' => 'top#top'
  
  #tweet
  #resources :tweets    #自動的割り振りできたが、データベースが反映されなかった
  get 'tweets/index' => 'tweets#index'  #一覧
  get 'tweets/new' => 'tweets#new'      #新規
  get 'tweets/:id' => 'tweets#show'     #詳細
  post 'tweets/create' => 'tweets#create'
end
