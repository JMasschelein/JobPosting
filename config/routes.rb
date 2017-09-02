Rails.application.routes.draw do
  get 'jobs/index'

  get 'jobs/show'

  get 'jobs/new'

  get 'jobs/edit'

  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  root 'welcome#index'
    
end
