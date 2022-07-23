Rails.application.routes.draw do
  # TOP
  get '/' => 'posts#index'
  
  # 会員登録用
  get 'signup' => 'users#new'
  post 'users/create' => 'users#create'

  # ログイン & ログアウト用
  get 'login' => 'sessions#new'
  post 'sessions/create' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # 投稿用
  get 'posts/new'
  post 'posts/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
