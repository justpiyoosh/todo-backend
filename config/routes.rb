Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/todo' do
    get '/todos_list', to: 'todos#todos_list' 
    get '/create' , to: 'todos#create'
    put '/edit/:id' , to: 'todos#edit' 
    delete 'delete/:id', to: 'todos#destroy'
  end
end
