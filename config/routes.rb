Coins::Application.routes.draw do

  root :to=> 'static_pages#home'

  match '/help',    :to=> 'static_pages#help'
  match '/about',   :to=> 'static_pages#about'
  match '/admin',   :to=> 'static_pages#admin'
  
  resources :origins
  resources :precious_metals
  resources :rating_agencies
  
  resources :sheldon_rating_categories do
    resources :sheldon_rating_scales
  end

  resources :attribute_types do
    resources :coin_value_attributes
    resources :coin_attributes
    resources :mint_coin_attributes
  end
  
  resources :mints do
    resources :mint_dates
  end
  
  resources :coin_values do
    resources :coins
    resources :coin_value_attributes
  end
  
  resources :coins do  
    resources :mint_coins
    resources :coin_attributes
    resources :photos
    resources :thumbnails
  end

  resources :mint_coins do
    resources :mint_coin_attributes
    resources :compositions
    resources :valuations
  end

  resources :our_coins do
    resources :our_coin_thumbnails 
  end


  
  resources :coin_value_attributes
  resources :coin_attributes
  resources :mint_coin_attributes
  resources :compositions
  resources :valuations
  resources :photos
  resources :thumbnails
  resources :our_coin_thumbnails 

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
