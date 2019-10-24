Rails.application.routes.draw do
  root to: 'contents#index'

  get 'diagnoses/index' => 'diagnoses#index'
  post 'diagnoses/create' => 'diagnoses#create'
  get 'diagnoses/create' => 'diagnoses#create'
  get 'games/index'    => 'games#index'
  get 'contents/index' => 'contents#index'
end
