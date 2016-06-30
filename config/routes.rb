Rails.application.routes.draw do

  resources :couleurs

  resources :orders do
    collection do
      get '/:id/new_creneau' => 'orders#new_creneau'
      get '/:id/new_adresse' => 'orders#new_adresse'
      post 'prix' => 'orders#prix'
      get '/:id/devis' => 'orders#devis'
    end
  end

  resources :webcallbacks

  resources :commandes do
    collection do
      post 'test'
    end
  end

  resources :stocks do
    collection do
      post 'prix' => 'stocks#prix'
    end
  end

  resources :helps do
    collection do
      post 'choix_lieu' => 'helps#choix_lieu'
      get 'choix_creneau' => 'helps#choix_creneau'
      get 'quand' => 'helps#quand'
      post 'recap' => 'helps#recap'
    end
  end

  resources :secteurs

  resources :disponibilites

  resources :infos

  devise_for :admins
  
  resources :admins

  resources :reparations

  resources :pannes

  devise_for  :users,
              :controllers => { registrations: 'registrations'}
              
  resources :users, only: [:index]
  
  resources :smartphones

  get 'pages/index'

  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/validation'

  get 'pages/validation_borne'

  get 'pages/bienvenue'

  get 'pages/reparations'

  get 'pages/borne'

  get 'pages/estimation'

  get 'devenir_smarty' => 'pages#devenir_smarty'

  get 'pages/landing_wcb'

  get 'pages/landing_help'

  get 'ce' => 'pages#ce'

  get 'diagnostic' => 'pages#diagnostic'

  get 'diagnosticbis' => 'pages#diagnosticbis'

  get 'devis' => 'pages#devis'

  get 'ou' => 'pages#ou'

  get 'faq' => 'pages#faq'

  get 'landing-prix' => 'pages#landing_prix'

  get 'landing-prix-end' => 'pages#landing_prix_fin'

  get 'cgv' => 'pages#cgv'

  post 'pages/prix' => 'pages#prix'

  post 'pages/landingprix' => 'pages#landingprix'

  post 'pages/show_modal' => 'pages#show_modal'

  post 'pages/show_lieu' => 'pages#show_lieu'

  post 'pages/show_date' => 'pages#show_date'

  post 'pages/show_devis' => 'pages#show_devis'

  get 'home_yield' => 'pages#home_yield'

  root 'pages#home_yield'
  
  # root 'smartphones#index'

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
