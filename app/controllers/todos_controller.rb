class TodosController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
      message = {:data => "Welcome on Homepage!!"}
      render json: message
    end

    def todos_list
        list = Todo.all
        render json: list
    end

    def detail
      isExist = Todo.exists?(id: params[:id])
      if isExist
        data = Todo.find(params[:id])
        render json: data
      else 
        data = {"message" => "Couldn't find Todo with 'id'=#{params[:id]} in our DB"}
        render json: data
      end
    end

    def create
        @todo = Todo.new(title: params["title"] , description: params["description"] , isComplete: params["isComplete"])
        if @todo.save
            msg = { :data => "todo created succesfully!!"}
            render :json => msg
        else
            msg = { :data => "some error accured!!"}
            render :json => msg
        end 
    end


  def edit
    @todo = Todo.find(params[:id])
    @todo.update(title: params["title"] , description: params["description"] , isComplete: params["isComplete"])
    msg = { :data => "todo updated succesfully!!"}
    render :json => msg
  end

  
  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    msg = { :data => "todo deleted succesfully!!"}
    render :json => msg
  end
end


