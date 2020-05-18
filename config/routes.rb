Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, only: [:new, :create, :update, :edit, :index]


  resources :school_classes, only: [:new, :create, :update, :edit, :index]

  #creating more dynamic routes
  get "/students/:id", to: "students#show"
  patch "/students/:id", to: "students#update"
  get "/school_classes/:id", to: "school_classes#show"
  patch "/school_classes/:id", to: "school_classes#update"
end
