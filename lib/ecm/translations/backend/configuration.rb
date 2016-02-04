require 'active_support/core_ext/module/delegation'
require 'active_support/core_ext/module/attribute_accessors'

module Ecm
  module Translations
    module Backend
      module Configuration
        def configure
          yield self
        end
        
        mattr_accessor :registered_controllers do
          -> {[]}
        end
      end
    end
  end
end
