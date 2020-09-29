Rails.application.routes.draw do
  # GET 'cocktails = index'
  # GET 'cocktail/id = show'
  # GET 'cocktails/new = new'
  # POST 'cocktails/create = create'
  # GET 'cocktails/edit = edit'
  # PATCH 'cocktails/update = update'
  # DELETE 'cocktails/destroy = delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
