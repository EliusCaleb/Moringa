Rails.application.routes.draw do
  resources :mcqs
  resources :studentprofiles
  resources :tutorprofiles
  resources :assessments
  resources :tutors
  resources :students


  #Signup routes for student
  post "/signup" , to: "students#create"
  get "/me", to:"students#show"
  get '/students', to: "students#index"
  
  #login & logout routes for student
  post "/login" , to:"sessions#create"
  delete "/logout" ,to: "sessions#destroy"
  
  #Signup routes for tutor
  post "/signup" , to: "tutors#create"
  get "/me", to:"tutors#show"
  get '/tutors', to: "tutors#index"
  
  
end
