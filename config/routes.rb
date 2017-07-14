Rails.application.routes.draw do
  devise_for :companies, path: 'companies' , controllers: { sessions: "companys/sessions", registrations: 'companys/registrations' }
  devise_for :users, path: 'users'

  
  resources :jobs
  resource :education
  resource :skill
  resource :networks
  resource :savedjob
  resources :referral


  resources :companies do
     collection do
      get 'dashboard'
    end
  end

  resources :users do
    collection do
      get 'dashboard'
      get 'feed'
    end
  end

end
