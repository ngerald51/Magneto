Rails.application.routes.draw do
  devise_for :companies, path: 'companies' , controllers: { sessions: "companys/sessions", registrations: 'companys/registrations' }
  devise_for :users, path: 'users'

  resources :users
  resources :companies


  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
