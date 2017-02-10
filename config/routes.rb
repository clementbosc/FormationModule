Rails.application.routes.draw do
  devise_for :users
  resources :seance_laboratoires
  resources :travaux_diriges
  resources :devoirs 
  resources :note_devoirs, only: [:update]
  resources :interrogations, only: [:update]
  resources :participations, only: [:update]
  resources :users
  resources :groups
  
  post 'devoirs/ajoute_presents' => "devoirs#ajoute_presents"
  post 'travaux_diriges/ajoute_presents' => "travaux_diriges#ajoute_presents"
  post 'seance_laboratoires/ajoute_presents' => "seance_laboratoires#ajoute_presents"
  post 'groups/ajoute_lab_teacher' => "groups#ajoute_lab_teacher"
  post 'groups/ajoute_theory_teacher' => "groups#ajoute_theory_teacher"
  post 'groups/ajoute_etudiants' => "groups#ajoute_etudiants"

  root to: 'users#index'


  
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
