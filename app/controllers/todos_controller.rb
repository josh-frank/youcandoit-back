class TodosController < ApplicationController

  def index
    render json: Todo.all
  end

  def show
    render json: Todo.find( params[ :id ] )
  rescue => error
    logger.info error
    render json: { errors: [ "Cannot find todo with id of #{ params[ :id ] }" ] }, status: :not_found
  end

  def create
    new_todo = Todo.create(
      user_id: params[ :user_id ],
      content: params[ :content ]
    )
    if new_todo.valid?
      render json: new_todo
    else
      render json: { errors: new_todo.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update_content
    todo_to_update = Todo.find( params[ :id ] )
    todo_to_update.update(
      content: params[ :content ] || todo_to_update.content
    )
    render json: todo_to_update
  end

  def toggle_finished
    todo_to_update = Todo.find( params[ :id ] )
    todo_to_update.update( finished: !todo_to_update.finished )
    render json: todo_to_update
  end

  def destroy
    destroyed_todo = Todo.find( params[ :id ] ).destroy
    render json: destroyed_todo
  end

end
