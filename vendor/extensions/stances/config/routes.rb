Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :stances do
    resources :stances, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :stances, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :stances, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
