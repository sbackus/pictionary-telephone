Rails.application.routes.draw do
  root to: 'captions#new'
  resources :captions
end
