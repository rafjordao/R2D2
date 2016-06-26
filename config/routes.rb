Rails.application.routes.draw do
  
  resources :contacts
  root 'welcome#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  resource :users
  post '/signup' => 'users#create'
  post '/users/edit' => 'users#update'
  patch '/users/edit' => 'users#update'
  get '/chamados' => 'chamado#new'
  get 'chamado/carregar'
  post 'chamado/setLogradouro'=>'chamado#setLogradouro'
  post '/chamado/procurar' => 'chamado#procurar'
  post '/chamado/procurarLogradouro' => 'chamado#procurarLogradouro'
  post 'chamado/carregarLogradouro'
  put 'chamado/procurar/monitorar' => 'chamado#monitorar'
  
  post '/chamado/procurar_cb' => 'chamado#monitorar'
  post '/chamado/procurar_cb_ex' => 'chamado#desMonitorar'
  post '/chamado/procurarLogradouro_cb' => 'chamado#monitorar'
  post '/chamado/procurarLogradouro_cb_ex' => 'chamado#desMonitorar'
  
  
  get '/chamado/historico' => 'chamado#historico'
  post '/chamado/historico' => 'chamado#historico'
  
  get '/auth/:provider/callback', to: 'sessions#createG'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroyG', as: 'signout'


  get '/grafico' => 'graph#new'
  post '/grafico/procurar' => 'graph#procurar'
  post '/grafico/procurarGeral' => 'graph#procurarGeral'
  
  get '/sobrenos' => 'aboutus#new'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
