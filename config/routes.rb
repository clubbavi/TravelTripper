Rails.application.routes.draw do
  devise_for :users
  resources :fonts
  resources :titles
  resources :colors
  get 'dashboards/index'
  match 'change_styling', to: 'dashboards#change_styling', via: [:get, :post, :update]

  root to: 'dashboards#index'

  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
    get 'users/sign_out', to: 'devise/sessions#destroy'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
