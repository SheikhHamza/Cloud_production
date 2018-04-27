Rails.application.routes.draw do
  post 'reviews/add_review'

  get 'hotels/home'
  root 'hotels#home'
  post '/rate' => 'rater#create', :as => 'rate'
  resources :profiles
  devise_for :users
  resources :rooms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
