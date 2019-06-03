Rails.application.routes.draw do
  root to:"memos#index"
  post "/create", to:"memos#create"
  get "/show", to:"memos#show"
  delete "/memos/:id", to:"memos#destroy"
end
