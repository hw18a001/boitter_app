Rails.application.routes.draw do
  
  #トップページ
  get '/' => 'top#top'
  
  #tweet
  #resources :tweets    #自動的割り振りできたが、データベースが反映されなかった
  get 'tweets/index' => 'tweets#index'
end
