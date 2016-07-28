Rails.application.routes.draw do
  # resources :physicians
  # resources :pillboxes

  devise_for :users
  get 'home/index'
  root to: 'home#index'

  get 'physicians' => 'physicians#index', as: :index_physician

  get 'physicians/new' => 'physicians#new', as: :new_physician

  post 'physicians/create' => 'physicians#create', as: :create_physician

  get 'physicians/:id' => 'physicians#show', as: :physician

  get 'physicians/:id/edit' => 'physicians#edit', as: :edit_physician

  patch 'physicians/:id/update' => 'physicians#update', as: :update_physician

  get 'physicians/search' => 'physicians#search'

  delete 'physicians/:id/delete' => 'physicians#destroy', as: :destroy_physician

  get 'pillboxes' => 'pillboxes#index', as: :index_pillbox

  get 'pillboxes/new' => 'pillboxes#new', as: :new_pillbox

  post 'pillboxes/create' => 'pillboxes#create', as: :create_pillbox

  get 'pillboxes/:id' => 'pillboxes#show', as: :pillbox

  get 'pillboxes/:id/edit/' => 'pillboxes#edit', as: :edit_pillbox

  patch 'pillboxes/:id/update' => 'pillboxes#update', as: :update_pillbox

  get 'pillboxes/search' => 'pillboxes#search'

  delete 'pillboxes/:id/delete/' => 'pillboxes#destroy', as: :destroy_pillbox

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
