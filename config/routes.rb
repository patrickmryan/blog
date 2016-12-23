Rails.application.routes.draw do
  get 'welcome/index'
 
  self.resources(:articles)
  
  root 'welcome#index'
  
end