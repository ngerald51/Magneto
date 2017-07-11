Rails.application.routes.draw do
  devise_for :companies, path: 'companies' , controllers: { sessions: "companys/sessions", registrations: 'companys/registrations' }
  devise_for :users, path: 'users'

  
  resource :jobs
  resource :education
  resource :skill

  resources :companies do
     collection do
      get 'dashboard'
    end
  end

  resources :users do
    collection do
      get 'dashboard'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
