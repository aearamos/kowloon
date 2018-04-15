Rails.application.routes.draw do
  get 'foods/new'

  get 'foods/create'

  get 'foods/update'

  get 'foods/edit'

  get 'foods/destroy'

  get 'foods/index'

  get 'foods/show'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
