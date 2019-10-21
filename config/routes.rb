Rails.application.routes.draw do
  get 'diagnoses/index' => 'diagnoses#index'
  get 'games/index'    => 'games#index'
  get 'contents/index' => 'contents#index'
end
