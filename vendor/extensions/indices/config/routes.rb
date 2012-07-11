Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :indices do
    resources :indices, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :indices, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :indices, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
