Patients::Application.routes.draw do
  resources :locations
  resources :patients

  root to: "locations#index"
end
