BPosting::Application.routes.draw do
  resources :postings
  root :to => redirect('/postings')
end
