class ReviewsController < ApplicationController
<<<<<<< HEAD
  before_action :logged_in?
=======
>>>>>>> master

  def new
    @review = Review.new
    # if session[:user_id]
    #   @current = User.find(session[:user_id])
    end 
  end

  def create
    @review = Review.new(review_params)
    # @order.user_id = session[:user_id]
    # if @review.save
    #   Review.find(@review.user_id)
    #   redirect_to @review
    # else
    #   render :new
    # end
  end

  def show 
    @review = Review.find(params[:id])
  end
  
  def edit
    @review = Review.find(params[:id])
  end

  def update 
    @review = Review.find(params[:id])
    @review.update(edit_review_params)
    redirect_to review_path(@review)
  end

  def destroy
    @review = Review.find(params[:id])
    @user = @review.user
    @review.delete
    redirect_to user_path(@user)
  end

  private

  def edit_review_params
    params.require(:review).permit(:content, :rating)
  end

  def create_review_params
    params.require(:review).permit(:content, :rating, :movie_id, :user_id)
  end

end
