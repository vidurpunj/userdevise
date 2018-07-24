Rails.application.routes.draw do
  
  resources :admin, only: [:dashboard]

  resources :users, only: [:dashboad] 

  resources :home, only: [:index]
  
  devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }, controllers: {
        sessions: 'users/sessions', registrations: 'users/registrations', confirmations: 'users/confirmations',passwords: 'users/passwords' 
      }
 
  
  root to: 'home#index'
  
end
