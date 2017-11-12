Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :katas do
    resources :katas, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :katas, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :katas, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
