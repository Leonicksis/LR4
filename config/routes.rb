Rails.application.routes.draw do
  resources :blogs do
    resources :artcles
    end
    
    resources :authors do
    resources :artcles
    end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artcles
end

