Rails.application.routes.draw do

  resources :posts, :only => [:new, :edit, :show, :index, :create]
  root 'posts#new'

end
