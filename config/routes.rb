Rails.application.routes.draw do
  root to: 'sites#home'
  get :about, to: 'sites#about'
  get :year, to: "sites#year"
  get :yeard, to: 'sites#yeard'
end
