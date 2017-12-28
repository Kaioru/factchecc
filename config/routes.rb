Rails.application.routes.draw do
  scope :api do
    mount_devise_token_auth_for 'User', at: 'auth'

    resources :articles do
      resources :reports
    end

    get '/stats/:id', to: 'stats#show'
  end
end
