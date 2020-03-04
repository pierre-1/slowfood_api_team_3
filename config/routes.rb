Rails.application.routes.draw do
  namespace :api do
    resources :products, only: [:index], constraints: { format: 'json' }
    # for user:
    namespace :v1, defaults: { format: :json } do
    end
  end
end