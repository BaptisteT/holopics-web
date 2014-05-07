HolopicsWeb::Application.routes.draw do

namespace :api do
    namespace :v1  do
      resources :holopics, only: [:create, :index]
    end
  end
end
