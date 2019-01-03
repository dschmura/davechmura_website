Rails.application.routes.draw do
  resources :posts
  devise_for :users
  get '/project_status', to: 'pages#project_status'
  get '/privacy', to: 'pages#privacy'
  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'
  root to: 'pages#index'
  get 'pages/index'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/privacy'
  get 'pages/project_status'
  get '/twitter' => redirect('https://twitter.com/humbledaisy')
  get '/github' => redirect('https://github.com/dschmura')
  get '/linkedin' => redirect('https://www.linkedin.com/in/davechmura/')
  get '/umich' => redirect('https://www.umich.edu')

  match '/resume', :to => 'resume#index', via: :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources 'feedbacks', only: [:create]
end
