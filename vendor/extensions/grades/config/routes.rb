Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :grades do
    resources :grades, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :grades, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :grades, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
