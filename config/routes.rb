Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:new, :create, :edit, :update, :index, :update]
  resources :school_classes, only: [:new, :create, :edit, :update, :index, :update]
  get "/students/:id", to: "students#show"
  get "/school_classes/:id", to: "school_classes#show"
  patch "/students/:id", to: "students#update"
  patch "/school_classes/:id", to: "school_classes#update"
end
