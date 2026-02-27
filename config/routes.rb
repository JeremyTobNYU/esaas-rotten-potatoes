Rails.application.routes.draw do

  resources :movies #, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
                    # This creates all the necessary routes for the seven default RESTful (CRUD) actions on movies:
                    # Write for me the routes 
                    # GET    /movies          => movies#index
                    # GET    /movies/:id      => movies#show
                    # GET    /movies/new      => movies#new
                    # POST   /movies          => movies#create
                    # GET    /movies/:id/edit => movies#edit
                    # PATCH  /movies/:id      => movies#update
                    # DELETE /movies/:id      => movies#destroy

  root :to => redirect('/movies') # Set the root route to redirect to the movies index page
end