Rails.application.routes.draw do
  #skipオプションを使用して、不要なルーティング(パスワード変更・管理者側の登録)を削除
  
  #管理者用
  devise_for :admin, skip: [:registarations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  
  #顧客用
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  
  namespace :admin do
    root to: "homes#top"
    resources :products
    resources :genres
    resources :customers
    resources :orders
    resources :order_details
  end
  
  scope module: :public do
    root to: "homes#top"
    resources :products
    resources :customers
    resources :order_items
    resources :orders
    resources :site_names
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
