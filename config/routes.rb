Rails.application.routes.draw do
  root 'news#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :news, only: %i[index] do
    collection do
      get 'search'
      get 'top_news'
    end
  end
end
