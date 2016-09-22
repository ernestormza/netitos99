Rails.application.routes.draw do
  resources :ideas

  devise_for :users do
  	get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root 'main#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
