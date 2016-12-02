Rails.application.routes.draw do

  resources :users, :only => [:new, :edit, :show, :index]
  root 'users#new'

end
