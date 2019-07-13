Rails.application.routes.draw do
  root to: 'sites#home'
  get :about, to: 'sites#about'
  get :comics, to: "sites#comics"
  get :prices, to: 'sites#prices'
end
