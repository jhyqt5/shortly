Shortly::Application.routes.draw do
  get '/url/:short_url' , :to => 'links#url', as: 'url'
  resources :links
  root :to => 'links#index'

end
