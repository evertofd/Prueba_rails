Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root "todos#index"
get 'todos', to: 'todos#index'
get 'todos/new', to: 'todos#new'
get 'todos/list', to: 'todos#list'
post 'todos', to: 'todos#create'
get 'todos/:id', to: 'todos#show', as: 'todo'
get 'todos/:id/edit', to: 'todos#edit'
get 'todos_completed/:id', to: 'todos#completed', as: 'todo_completed'
patch 'todos/:id', to: 'todos#update'
delete 'todos/:id', to: 'todos#destroy'

end
