Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root "pages#home"
  get "chateau_de_sacy", to: "pages#chateau_de_sacy"
  get "chateau_de_theoule", to: "pages#chateau_de_theoule"
  get "cocorico", to: "pages#cocorico"
  get "domaine_de_raba", to: "pages#domaine_de_raba"
  get "brindos_lac_et_chateau", to: "pages#brindos_lac_et_chateau"
  get "chateau_de_leognan", to:"pages#chateau_de_leognan"
  get "le_soleil_d_or", to:"pages#le_soleil_d_or"

  resources :vips, only: [:new, :create, :show]  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

end
