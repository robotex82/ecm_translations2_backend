module Ecm
  module Translations
    module Backend
      class Engine < ::Rails::Engine
        isolate_namespace Ecm::Translations::Backend
      end
    end
  end
end
