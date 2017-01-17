Rails.application.routes.draw do
  devise_for :users
  
  resources :jobs do 
    resources :resumes
  end

  resources :welcome do
  end
   root 'welcome#index'
   
  namespace :admin do
  	resources :jobs do
  		member do
  			post :publish
  			post :hide
  		end
      resources :resumes
  	  end
  end


end
