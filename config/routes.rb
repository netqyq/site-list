Rails.application.routes.draw do
  get 'about' => 'about#index'
  get 'home/index' => 'home#index'

  devise_for :users, controllers: { registrations: "registrations"}

  resources :sites
  root to: 'home#index'

  Rails.application.routes.draw do
    mount RuCaptcha::Engine => "/rucaptcha"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
