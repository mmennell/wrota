Rails.application.routes.draw do
  # Routes for the Restaurant_review resource:
  # CREATE
  get "/restaurant_reviews/new", :controller => "restaurant_reviews", :action => "new"
  post "/create_restaurant_review", :controller => "restaurant_reviews", :action => "create"

  # READ
  get "/restaurant_reviews", :controller => "restaurant_reviews", :action => "index"
  get "/restaurant_reviews/:id", :controller => "restaurant_reviews", :action => "show"

  # UPDATE
  get "/restaurant_reviews/:id/edit", :controller => "restaurant_reviews", :action => "edit"
  post "/update_restaurant_review/:id", :controller => "restaurant_reviews", :action => "update"

  # DELETE
  get "/delete_restaurant_review/:id", :controller => "restaurant_reviews", :action => "destroy"
  #------------------------------

  # Routes for the Staff_review resource:
  # CREATE
  get "/staff_reviews/new", :controller => "staff_reviews", :action => "new"
  post "/create_staff_review", :controller => "staff_reviews", :action => "create"

  # READ
  get "/staff_reviews", :controller => "staff_reviews", :action => "index"
  get "/staff_reviews/:id", :controller => "staff_reviews", :action => "show"

  # UPDATE
  get "/staff_reviews/:id/edit", :controller => "staff_reviews", :action => "edit"
  post "/update_staff_review/:id", :controller => "staff_reviews", :action => "update"

  # DELETE
  get "/delete_staff_review/:id", :controller => "staff_reviews", :action => "destroy"
  #------------------------------

  # Routes for the Staff resource:
  # CREATE
  get "/staffs/new", :controller => "staffs", :action => "new"
  post "/create_staff", :controller => "staffs", :action => "create"

  # READ
  get "/staffs", :controller => "staffs", :action => "index"
  get "/staffs/:id", :controller => "staffs", :action => "show"

  # UPDATE
  get "/staffs/:id/edit", :controller => "staffs", :action => "edit"
  post "/update_staff/:id", :controller => "staffs", :action => "update"

  # DELETE
  get "/delete_staff/:id", :controller => "staffs", :action => "destroy"
  #------------------------------

  # Routes for the Role resource:
  # CREATE
  get "/roles/new", :controller => "roles", :action => "new"
  post "/create_role", :controller => "roles", :action => "create"

  # READ
  get "/roles", :controller => "roles", :action => "index"
  get "/roles/:id", :controller => "roles", :action => "show"

  # UPDATE
  get "/roles/:id/edit", :controller => "roles", :action => "edit"
  post "/update_role/:id", :controller => "roles", :action => "update"

  # DELETE
  get "/delete_role/:id", :controller => "roles", :action => "destroy"
  #------------------------------

  # Routes for the Restaurant resource:
  # CREATE
  get "/restaurants/new", :controller => "restaurants", :action => "new"
  post "/create_restaurant", :controller => "restaurants", :action => "create"

  # READ
  get "/restaurants", :controller => "restaurants", :action => "index"
  get "/restaurants/:id", :controller => "restaurants", :action => "show"

  # UPDATE
  get "/restaurants/:id/edit", :controller => "restaurants", :action => "edit"
  post "/update_restaurant/:id", :controller => "restaurants", :action => "update"

  # DELETE
  get "/delete_restaurant/:id", :controller => "restaurants", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
