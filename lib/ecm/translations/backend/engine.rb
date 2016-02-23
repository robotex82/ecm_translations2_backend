module Ecm
  module Translations
    module Backend
      class Engine < ::Rails::Engine
        isolate_namespace Ecm::Translations::Backend

        initializer 'ecm_translations_backend.asset_pipeline' do |app|
          app.config.assets.precompile << 'ecm_translations_backend.js'
          app.config.assets.precompile << 'ecm_translations_backend.css'
        end
      end
    end
  end
end
