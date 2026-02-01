Rails.application.routes.draw do
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  get "onboarding/step1"
  get "onboarding/step2"
  get "onboarding/step3"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  scope "(:locale)", locale: /en|cs/ do
    root "pages#home"

    resources :onboarding, only: [] do
      collection do
        get :step1
        post :save_step1
        get :step2
        post :save_step2
        get :step3
        patch :save_step3
      end
    end

    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'

    resources :jam_sessions, only: [:index, :show] do
      member do
        post :rsvp, to: 'attendances#create'
      end
    end

    resources :attendances, only: [:destroy]
    resources :profiles, only: [:show]
  end
end
