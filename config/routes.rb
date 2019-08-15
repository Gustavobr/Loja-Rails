Rails.application.routes.draw do
#get 'produtos', to:  'produtos#index'
root  to:'produtos#index'
get 'produtos/new' ,to: 'produtos#new'
post 'produtos/new', to:'produtos#create'
get 'produtos' , to: 'produtos#index'
end
