Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'

  namespace :admin do
    root to: 'welcome#index'
  end


  namespace :api, defaults: { format: :json } do
    get 'school', to: 'config#school'
  end

end
