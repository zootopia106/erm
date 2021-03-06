Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get  'home/retrive_employees_by_manager' => 'home#retrive_employees_by_manager'
  get  'home/get_departments' => 'home#get_departments'
  post 'home/change_department' => 'home#change_department'
end
