Rails.application.routes.draw do
  devise_for :users
  root 'projects#index'
  # Routes for the Task resource:
  # CREATE
  get('/tasks/new', { :controller => 'tasks', :action => 'new' })
  get('/create_task', { :controller => 'tasks', :action => 'create' })

  # READ
  get('/tasks', { :controller => 'tasks', :action => 'index' })
  get('/tasks/:id', { :controller => 'tasks', :action => 'show' })

  # UPDATE
  get('/tasks/:id/edit', { :controller => 'tasks', :action => 'edit' })
  get('/update_task/:id', { :controller => 'tasks', :action => 'update' })
  get('/claim_task/:id', { :controller => 'tasks', :action => 'claim' })
  get('/unclaim_task/:id', { :controller => 'tasks', :action => 'unclaim' })
  get('/complete_task/:id', { :controller => 'tasks', :action => 'complete' })
  get('/uncomplete_task/:id', { :controller => 'tasks', :action => 'complete' })

  # DELETE
  get('/delete_task/:id', { :controller => 'tasks', :action => 'destroy' })
  #------------------------------

  # Routes for the Project resource:
  # CREATE
  get('/projects/new', { :controller => 'projects', :action => 'new' })
  get('/create_project', { :controller => 'projects', :action => 'create' })

  # READ
  get('/projects', { :controller => 'projects', :action => 'index' })
  get('/projects/:id', { :controller => 'projects', :action => 'show' })

  # UPDATE
  get('/projects/:id/edit', { :controller => 'projects', :action => 'edit' })
  get('/update_project/:id', { :controller => 'projects', :action => 'update' })

  # DELETE
  get('/delete_project/:id', { :controller => 'projects', :action => 'destroy' })
  #------------------------------

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
