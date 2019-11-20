Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/' => 'blog#index'
  root 'blog#index'

  # get '/blog/create' => 'blog#create'
  get 'blog/create'

  get 'blog/destroy'

  get 'blog/edit'

  get 'blog/update'

  post 'blog/comment'
end
