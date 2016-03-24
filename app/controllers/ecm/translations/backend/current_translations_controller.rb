class Ecm::Translations::Backend::CurrentTranslationsController < Itsf::Backend::Resource::BaseController
  def self.resource_class
    Ecm::Translations::CurrentTranslation
  end
end
