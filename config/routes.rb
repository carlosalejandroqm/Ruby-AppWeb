Rails.application.routes.draw do
  resources :file_attachments
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :users
  resources :profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
