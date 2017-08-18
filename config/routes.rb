Rails.application.routes.draw do
  # songwriting CRUD
  post '/songwritings' => 'songwritings#create'
  get '/songwritings/:id' => 'category#songwriting_info', as: "songwriting"
  get '/songwritings/:id/edit' => 'songwritings#edit', as: "edit_songwriting"
  patch '/songwritings/:id' => 'songwritings#update'
  delete '/songwritings/:id' => 'songwritings#destroy'
  
  # cover CRUD
  post '/covers' => 'covers#create'
  get '/covers/:id' => 'category#cover_info', as: "cover"
  get '/covers/:id/edit' => 'covers#edit', as: "edit_cover"
  patch '/covers/:id' => 'covers#update'
  delete '/covers/:id' => 'covers#destroy'
  
  # show CRUD
  post '/shows' => 'shows#create'
  get '/shows/:id' => 'category#show_info', as: "show"
  get '/shows/:id/edit' => 'shows#edit', as: "edit_show"
  patch '/shows/:id' => 'shows#update'
  delete '/shows/:id' => 'shows#destroy'
  
  # home
  root 'home#index'
  get '/' => 'home#index'
  get 'home/index'
  get 'home/result'
  get 'home/upload'

  # main-category
  get 'category/songwriting/:genre' => 'category#songwriting'
  get 'category/cover'
  get 'category/show'
  get 'category/songwriting_view/:id' => 'category#songwriting_view'


  get 'category/songwriting_info'
  

  # other-category
  get 'muserchart/index' => 'muserchart#index'
  get 'muserchart/cover' => 'muserchart#cover'
  get 'muserchart/show' => 'muserchart#show'
  
  # my-category
  get 'history/index'
  get 'history/myspace'
  get 'history/mymuser'
  get 'history/myheart'
  get 'mymuser/index'
  get 'mymusic/index'
  


  devise_for :users
  get 'new/index'


  #like

  get '/like/:id' => 'category#like'
  get '/like_cancel/:id' => 'category#like_cancel'
  
  get '/like2/:id' => 'category#like2'
  get '/like2_cancel/:id' => 'category#like2_cancel'
  
  get '/like3/:id' => 'category#like3'
  get '/like3_cancel/:id' => 'category#like3_cancel'
  
  
  
  #comment
  
  post 'category/sw_comment_create/:songwriting_id' => 'category#sw_comment_create'
  post 'category/c_comment_create/:cover_id' => 'category#c_comment_create'
  post 'category/s_comment_create/:show_id' => 'category#s_comment_create'
  
  get 'category/sw_comment_destroy/:songwriting_id' => 'category#sw_comment_destroy'
  get 'category/c_comment_destroy/:cover_id' => 'category#c_comment_destroy'
  get 'category/s_comment_destroy/:show_id' => 'category#s_comment_destroy'
  
  




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
