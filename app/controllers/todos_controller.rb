class TodosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @todos = Todo.all.order(:id)
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save

    else
      render json: {
        error: {
          message: @todo.errors.full_messages.to_sentence
        }
      }
    end

    # this should read in the params submitted, and
    # make a new todo.
    # it will return either an error object, or the new
    # todo
    # you'll need to edit `create.json.jbuilder` in
    # views/todos/ to format the json object
  end

  def update
    @todo = Todo.find(params[:id])



    if @todo.update(todo_params)

    else
      render json: {
        error: {
          message: @todo.errors.full_messages.to_sentence
        }
      }
    end

    # this should update an existing todo
    # so you'll first need to load the todo by id,
    # then call update
    # this will error out for two reasons:
    # bad id (the todo doesn't exist any more), or bad params
    # it will return either an error object, or the new
    # todo
    # you'll need to edit `update.json.jbuilder` in
    # views/todos/ to format the json object
  end

  def destroy
    @todo = Todo.find(params[:id])

    @todo.destroy
    # this should destroy an existing todo
    # then call destroy
    # this will error out if there's a bad id (the todo has
    # already been destroyed)
    # it will return either an error object, or the new
    # todo
    # you'll need to edit `destroy.json.jbuilder` in
    # views/todos/ to format the json object
  end

  private

  def todo_params
    params.require(:todo).permit(:description, :done, :decision)
  end
end
