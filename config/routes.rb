Rails.application.routes.draw do

  resources :posts, :except => [:destroy]
  root 'posts#new'

end
