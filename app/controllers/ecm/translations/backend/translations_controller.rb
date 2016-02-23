class Ecm::Translations::Backend::TranslationsController < Itsf::Backend::Resource::BaseController
  def self.resource_class
    # Set the resource class here.
    #
    # Default: Ecm::Translations::Translation
    #
    Ecm::Translations::Translation
  end

  private

  def collection_scope
    # Customize the collection scope here for collection retrival (i.e. for the
    # index action).
    #
    # Example: current_user.posts.includes(:comments)
    #
    # Default: resource_class
    #
    resource_class
  end

  def permitted_params
    # Set the allowed params, for your create and update methods.
    #
    # Example: params
    #            .require(:ecm_translations_translation)
    #              .permit(:title, :body)
    #
    params
      .require(:ecm_translations_translation)
      .permit(:locale, :key, :value, :interpolations, :is_proc)
  end
end
