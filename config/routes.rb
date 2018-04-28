Rails.application.routes.draw do
  get 'roompictures/index'

  get 'roompictures/add_picture'

  get 'roompictures/remove_picture'

  post 'reviews/add_review'
  post 'reviews/:id/destroy',to: 'reviews#destroy'
  get 'hotels/home'
  root 'hotels#home'
  post '/rate' => 'rater#create', :as => 'rate'
  resources :profiles
  devise_for :users
  resources :rooms do
  	resources :roompictures
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
