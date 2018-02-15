class Ecm::Translations::Backend::TranslationsController < Itsf::Backend::Resource::BaseController
  def self.resource_class
    Ecm::Translations::Translation
  end

  private

  def permitted_params
    params
      .require(:translation)
      .permit(:locale, :key, :value, :interpolations, :is_proc)
  end
end
