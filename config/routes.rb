Rails.application.routes.draw do
  resources :users do
    resources :twitter_account
    resources :instagram_account
    resources :facebook_account
    resources :youtube_account
  end
end
