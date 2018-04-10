Rails.application.routes.draw do
  devise_for :students
  devise_for :administrators, controllers: {
    sessions: 'admin/sessions'
  }
  namespace :admin do
  	resources :schools
  	resources :students
    get 'dashboard/index'
    root "dashboard#index"
  end

  resources :students
  root "students#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
