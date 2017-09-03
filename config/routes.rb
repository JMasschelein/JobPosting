Rails.application.routes.draw do
    
   resources :categories do
     resources :jobs, except: [:index]
   end    
    
  resources :users, only: [:new, :create]    

  get 'about' => 'welcome#about'
    
  get 'contact' => 'welcome#contact'    

  root 'welcome#index'
    
end
