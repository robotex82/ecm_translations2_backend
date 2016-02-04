Ecm::Translations::Backend.configure do |config|  
  # Set the resources, that will be shown in the backend menu in development
  # mode. This needs to be set to get a correct menu because
  # Controller.descendants is empty in development. This is an eager load
  # issue.
  # 
  # Default: config.registered_controllers = -> {[
  #            Ecm::Translations::Backend::TranslationsController
  #          ]}
  # 
  config.registered_controllers = -> {[
    Ecm::Translations::Backend::TranslationsController
  ]}
end