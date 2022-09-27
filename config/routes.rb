Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root "pages#home"
  get "chateau_de_sacy", to: "pages#chateau_de_sacy"
  get "chateau_de_sacy_en", to: "pages#chateau_de_sacy_en"
  get "domaine_de_raba", to: "pages#domaine_de_raba"
  get "domaine_de_raba_en", to: "pages#domaine_de_raba_en"
  get "brindos_lac_et_chateau", to: "pages#brindos_lac_et_chateau"
  get "brindos_lac_et_chateau_en", to: "pages#brindos_lac_et_chateau_en"
  get "le_soleil_d_or", to:"pages#le_soleil_d_or"
  get "le_soleil_d_or_en", to:"pages#le_soleil_d_or_en"

  get "chateau_de_theoule", to: "pages#chateau_de_theoule"
  get "cocorico", to: "pages#cocorico"
  get "chateau_de_leognan", to:"pages#chateau_de_leognan"

  resources :vips, only: [:new, :create, :show]  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :brindos_vips, only: [:new, :create, :show]
  resources :sacy_vips, only: [:new, :create, :show]
  resources :megeve_vips, only: [:new, :create, :show]
  resources :raba_vips, only: [:new, :create, :show]
  # Defines the root path route ("/")

end
