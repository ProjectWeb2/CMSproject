Rails.application.routes.draw do
  resources :images

  get 'useradministration/show'

  get 'useradministration/edit'

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  mount Ckeditor::Engine => '/ckeditor'
  get 'frontend/show'

  get 'frontend/index'

  get "frontend" => 'frontend#index'


  mount Rich::Engine => '/rich', :as => 'rich'
  devise_for :views
  devise_for :models
  devise_for :users, controllers: { sessions: "users/sessions" }
  resources :locations
  resources :useradministration do
    get :add
    get :remove
  end
  resources :typs
  resources :menus do
    get :up
    get :down
  end

  resources :contentperpages

  resources :contents

  resources :sites
  get '/frontend/:id', to: 'frontend#show'
  get '/frontend:menu', to: 'frontend#show'
  get '/menus/:id/up', to: 'menus#up'
  get '/menus/:id/down', to: 'menus#down'
  get "/" , to: 'frontend#index'
  get "/useradministration/add/:user_id&:role_id", to:'useradministration#add'
  get "/useradministration/remove/:user_id&:role_id", to:'useradministration#remove'
  get '/frontend/bild', to: 'frontend#image'





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
