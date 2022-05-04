class Api::UsersController < ApplicationController

  def index 
    @users = user.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @user = user.find_by(id: the_id)
    render 'show.json.jb'
  end

  def create
    @user = user.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      )
    @user.save
    render 'show.json.jb'
  end

  def update
    the_id = params[:id]
    @user = user.find_by(id: the_id)
    @user.name = params[:name] || @user.name

    @user.save
    render 'show.json.jb'
  end

  def destroy
    @user = user.find_by(id: params[:id])
    @user.destroy
    @user.save

    render 'destroy.json.jb'
  end
