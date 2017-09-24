Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :meanings do
    resources :meanings, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :meanings, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :meanings, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
