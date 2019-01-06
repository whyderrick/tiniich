Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#show"
  resources :frames, only: [:show] do
    resources :reflections, only: [:new, :create]
  end
end
