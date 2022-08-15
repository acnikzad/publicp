class Api::ReviewsController < ApplicationController

  def index 
    @reviews = Review.includes(:user, :bathroom).all
    render
  end

  def show
    the_id = params[:id]
    @review = Review.find_by(id: the_id)
    render json: @review
  end

  def create
    @review = Review.create(
      user_id: params[:user_id],
      comment: params[:comment],
      return: params[:return],
      bathroom_id: params[:bathroom_id],
      rating: params[:rating]
      )
    @review.save
    render :show
  end

  def update
    the_id = params[:id]
    @review = review.find_by(id: the_id)
    @review.user_id = params[:user_id] || @review.user_id
    @review.comment = params[:comment] || @review.comment
    @review.return = params[:return] || @review.return
    @review.bathroom_id = params[:bathroom_id] || @review.bathroom_id
    @review.rating = params[:rating] || @review.rating

    @review.save
    render :show
  end

  def destroy
    @review = Review.find_by(id: params[:id])
    if @review.present?
      @review.destroy
      @review.save
    end

    render
  end
end
