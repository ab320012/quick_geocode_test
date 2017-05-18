Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'geocodes#show'
  post 'geocodes' => 'geocodes#create'
end
