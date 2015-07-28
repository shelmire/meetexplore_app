Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "signup" }
  resources :users, :only => [:show, :index, :edit, :update]
  root             'static_pages#home'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'blog'    => 'static_pages#blog'
resources :conversations, only: [:index, :show, :destroy] do
  member do
    post :reply
    post :restore
    post :mark_as_read
  end
  collection do
    delete :empty_trash
  end
end
  resources :messages, only: [:new, :create]
end