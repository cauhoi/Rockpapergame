Rails.application.routes.draw do
  root 'games#new'

  resource :game do
    post :throw
  end
end
