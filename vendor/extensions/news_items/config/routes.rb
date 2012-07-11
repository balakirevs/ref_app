Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :news_items do
    resources :news_items, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :news_items, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :news_items, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
