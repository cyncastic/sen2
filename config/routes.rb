Sen2::Application.routes.draw do

  root 'blogs#index'

  get 'contact' => 'static#contact'
  get 'test' => 'static#test'
  get 'admin' => 'admin#index'
  get 'pricelist' => 'pricelist#index'

  resources :blogs, :users, :media

  resources :artworks,:categories do
    collection do
      post :sort
    end
  end

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

end