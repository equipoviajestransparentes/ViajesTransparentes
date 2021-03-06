ViajesTransparentesApp::Application.routes.draw do

  resources :searchvs

  resources :search_trips

  devise_for :users
  resources :consulta_viajes

  get "static_pages/consulta_viajes_ifai"


  resources :viajes_inicial

  resources :searches

  root :to => 'static_pages#consulta_viajes_ifai'
  
  resources :public_officers do
    resources :ciudadanos
    get "/graficas" => "public_officers#graficas"
    resources :commissions do 
      resources :trips do
        resources :details do
          resources :flights
        end
        resources :gastos
        resources :expense
      end
    end
  end

  get "/update_estado" => "trips#update_estado"
  get "/update_ciudad" => "trips#update_ciudad"
  get "/update_localidad" => "trips#update_localidad"

  get "/update_estado_d" => "trips#update_estado_d"
  get "/update_ciudad_d" => "trips#update_ciudad_d"
  get "/update_localidad_d" => "trips#update_localidad_d"
  get "/liberar_comision" => "commissions#liberar_comision"

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
