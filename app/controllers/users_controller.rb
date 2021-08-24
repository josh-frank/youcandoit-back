class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    render json: User.find( params[ :id ] )
  rescue => error
    logger.info error
    render json: { errors: [ "Cannot find user with id of #{ params[ :id ] }" ] }, status: :not_found
  end

  def create
    new_user = User.create(
      username: params[ :username ]
    )
    if new_user.valid?
      render json: new_user
    else
      render json: { errors: new_user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if !params[ :username ].present? || params[ :username ].empty?
      render json: { errors: [ "Username can't be blank" ] }, status: :unprocessable_entity
    else
      user_to_update = User.find( params[ :id ] )
      user_to_update.update(
        username: params[ :username ]
      )
      render json: user_to_update
    end
  end
  
  def destroy
    destroyed_user = User.find( params[ :id ] ).destroy
    render json: destroyed_user
  end

end
