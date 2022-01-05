Rails.application.routes.draw do
  root to: 'homes#top'
  resources :trainings do
    resources :likes, only: [:create]
  end
end
