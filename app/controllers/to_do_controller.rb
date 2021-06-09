class ToDoController < ApplicationController
    def todos_list
        list = Todo.all
        render json: list
    end
end
