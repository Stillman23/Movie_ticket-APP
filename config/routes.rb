Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :installs
  root 'movies#index'
  get "/:BuyMovieticket" => "static#show"
  get "/:contact" => "static#show"
  get "/:comingsoon" => "static#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
