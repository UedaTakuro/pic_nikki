Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  resources :categories, only: [:new, :index, :show, :create, :destroy]do
    resources :diaries, only: [:new, :show, :create, :edit, :update, :destroy]
  end
end
