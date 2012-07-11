module Refinery
  module Indices
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Indices

      engine_name :refinery_indices

      initializer "register refinerycms_indices plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "indices"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.indices_admin_indices_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/indices/index'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Indices)
      end
    end
  end
end
