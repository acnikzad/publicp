class Api::UsersController < ApplicationController

  def index 
    @users = User.all
    render
  end

  def show
    the_id = params[:id]
    @user = User.find_by(id: the_id)
    render json: @user
  end

  def create
    @user = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      )
    if @user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
    # render :show
  end

  def update
    the_id = params[:id]
    @user = User.find_by(id: the_id)
    @user.name = params[:name] || @user.name

    @user.save
    render :show
  end

  def destroy
    @user = User.find_by(id: params[:id])

    if @user.present?
      @user.destroy
      @user.save
    end

    render
  end
end
