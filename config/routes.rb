Rails.application.routes.draw do
  root to: 'application#about'
  get 'terms', to: 'application#terms'
  get 'privacy', to: 'application#privacy'
  get 'cookies', to: 'application#cookies_policy'
  get 'about', to: 'application#about'
  get 'contact_us', to: 'application#contact_us'
  get 'advertise', to: 'application#advertise'

  resources :posts, path: 'news'
  get 'feedback', to: 'feedbacks#new'
  post 'feedbacks', to: 'feedbacks#create'
end
