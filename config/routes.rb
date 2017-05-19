Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cockails#index'

  resources :cocktails do
    resources :doses, only: [ :index, :show, :new, :create, :destroy ]
  end
end
