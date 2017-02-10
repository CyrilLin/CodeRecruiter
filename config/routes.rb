Rails.application.routes.draw do

  get '/', to: 'home#index'

  namespace :manager do
    get '/', to: 'home#index'
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
