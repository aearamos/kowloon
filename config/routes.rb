Rails.application.routes.draw do
  get 'contents/new'

  get 'contents/create'

  get 'contents/update'

  get 'contents/edit'

  get 'contents/destroy'

  get 'contents/index'

  get 'contents/show'

  get 'events/new'

  get 'events/create'

  get 'events/update'

  get 'events/edit'

  get 'events/destroy'

  get 'events/index'

  get 'events/show'

  get 'cocktails/new'

  get 'cocktails/create'

  get 'cocktails/update'

  get 'cocktails/edit'

  get 'cocktails/destroy'

  get 'cocktails/index'

  get 'cocktails/show'

  get 'pages/contact'

  get 'pages/about'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
