Rails.application.routes.draw do
  resources :anime_lists do
    resources :anime_items do
      member do
        patch :complete
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "anime_lists#index"
end
