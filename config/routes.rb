Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, except: :index do
    resources :doses
  end
  root to: 'cocktails#index'
end
