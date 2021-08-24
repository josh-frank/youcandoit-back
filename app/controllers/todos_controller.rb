class TodosController < ApplicationController

  def show
    render json: Todo.find( params[ :id ] )
  end

end
