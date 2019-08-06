Rails.application.routes.draw do

  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
post 'create_project' => 'projects#create'
  post 'create' => 'todos#create'

  patch 'welcome/index' => 'todos#update'
    resources :projects do
        resources :todos, shallow: true
    end

    root 'welcome#index'
end
