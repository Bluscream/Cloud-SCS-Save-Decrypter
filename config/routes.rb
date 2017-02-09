Rails.application.routes.draw do
  get 'convert/index'
  post 'convert/submit'

  get 'convert/error'
  get 'convert/error_size'

  root 'convert#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
