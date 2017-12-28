Rails.application.routes.draw do
  scope :api do
    resources :articles do
      resources :reports
    end
  end
end
