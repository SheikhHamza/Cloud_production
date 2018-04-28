Rails.application.routes.draw do
  post 'reviews/add_review'
  post 'reviews/:id/destroy',to: 'reviews#destroy'
  get 'hotels/home'
  root 'hotels#home'
  post '/rate' => 'rater#create', :as => 'rate'
  resources :profiles
  devise_for :users
  resources :rooms do
    get 'roompictures/index'
    post 'roompictures/add_picture'
    post 'roompictures/:id/remove_picture/', to: 'roompictures#remove_picture'
    post 'roompictures/create'
    post 'roompictures/destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
