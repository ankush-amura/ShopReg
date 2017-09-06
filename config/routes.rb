Rails.application.routes.draw do
  get '/customers/comment'
  get '/superadmins/delmod'
  get '/moderators/delsale'
  get '/moderators/approve'
  get '/moderators/remove'
  get '/moderators/reject'
  get '/sales/remove'
  get '/sales/edit'
  post '/sales/edit'
  post '/customers/commented'
  get '/customers/commented'
  post '/customers/reply'
  post '/customers/search'
  get '/customers/search'
  post '/customers/index'
  post '/sales/newShop'
  get '/sales/newShop'
  resources :moderators
  resources :superadmins
  resources :sales
  resources :customers

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
