class Api::ReviewsController < ApplicationController

  def index 
    @reviews = Review.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @review = Review.find_by(id: the_id)
    render 'show.json.jb'
  end

  def create
    @review = Review.create(
      name: params[:name],
      comment: params[:comment],
      cleanliness: params[:cleanliness],
      return: params[:return],
      recommend: params[:recommend],
      bathroom_id: params[:bathroom_id],
      rating: params[:rating]
      )
    @review.save
    render 'show.json.jb'
  end

  def update
    the_id = params[:id]
    @review = review.find_by(id: the_id)
    @review.name = params[:name] || @review.name
    @review.comment = params[:comment] || @review.comment
    @review.cleanliness = params[:cleanliness] || @review.cleanliness
    @review.return = params[:return] || @review.return
    @review.recommend = params[:recommend] || @review.recommend
    @review.bathroom_id = params[:bathroom_id] || @review.bathroom_id
    @review.rating = params[:rating] || @review.rating

    @review.save
    render 'show.json.jb'
  end

  def destroy
    @review = review.find_by(id: params[:id])
    @review.destroy
    @review.save

    render 'destroy.json.jb'
  end
end
