Taskit::Application.routes.draw do

scope "api" do
  resources :tasks
  match "/:id" => "main#update"
end

root to: "main#index"

  get "main/index"

match "/home" => "main#index"

match "/tasks/:id" => "tasks#show"

end
