Ecm::Translations::Backend::Engine.routes.draw do
  resources :translations
  resources :current_translations, only: [:index]

  root to: 'home#index'
end
