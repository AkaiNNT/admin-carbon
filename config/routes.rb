Rails.application.routes.draw do
  devise_for :administrators, controllers: {
    sessions: 'admin/sessions'
  }
  namespace :admin do
    get 'dashboard/index'
    root "dashboard#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
