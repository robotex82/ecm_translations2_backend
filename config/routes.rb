Ecm::Translations::Backend::Engine.routes.draw do
  
  resources :translations

  root to: 'home#index'
end
