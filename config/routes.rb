Rails.application.routes.draw do
  get 'accounts/show'
  get 'accounts/edit'
  root 'top#index'
  
  get "about" => "top#about", as: "about"

  1.upto(18) do |n|
    get "lesson/step#{n}(/:name)"=>
    "lesson#step#{n}"
  end

  resources :members do
    get "search", on: :collection
  end

  resource :session, only:[:create, :destroy]
  resource :account, only:[:show, :edit, :update]
end
