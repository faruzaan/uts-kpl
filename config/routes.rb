Rails.application.routes.draw do
  resources :gajis
  resources :tunjangans
  resources :golongans
  resources :karyawans
  resources :ms_products, only: [:index]
  resources :ms_brands, only: [:index]
  root to: "home#index"
end
