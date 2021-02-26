Rails.application.routes.draw do
  root :to => "homepage#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/contact", to: "homepage#contact", as: "contact"
  get "/about", to: "homepage#about", as: "about"
  get "/product", to: "product#index"
  get "/product/:id", to: "product#show", as: "product_show"
  get "/category/:id", to: "homepage#category", as: "category"
  get "/carts", to: "carts#show", as: "carts"
  post "/order_products", to: "order_products#create"
  
end
