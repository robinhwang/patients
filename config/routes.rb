Patients::Application.routes.draw do
  

  resources :locations
  resources :patients

  root to: "locations#index"
  match "patients/location/:id", :to => "patients#location", :as => :location_patients
end
