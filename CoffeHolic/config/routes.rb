Rails.application.routes.draw do
  root :to => "homepage#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/contact", to: "homepage#contact", as: "contact"
  get "/about", to: "homepage#about", as: "about"
  get "/product", to: "homepage#product", as: "product"
  get "/product/:id", to: "homepage#productdetail", as: "pro_detail"
  get "/category/:id", to: "homepage#category", as: "category"
  
end
