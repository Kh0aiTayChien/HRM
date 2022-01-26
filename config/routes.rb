Rails.application.routes.draw do
  devise_for :employees
  as :employees do
    get "sign_in" => "devise/sessions#new"
    post "sign_in" => "devise/sessions#create"
    delete "sign_out" => "devise/sessions#destroy"
  end
  get 'dpms/list' => 'department#list'
  get 'dpms/new' => 'department#new'
  post 'dpms/create' => 'department#create'
  get 'dpms/show' => 'department#show'
  patch 'dpms/update' => 'department#update'
  get 'dpms/update' => 'department#update'
  get 'dpms/edit' => 'department#edit'
  get 'dpms/delete' => 'department#delete'
end
