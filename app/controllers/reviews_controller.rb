class ReviewsController < ApplicationController
  # skip_before_action :authenticate_user, only: [:index]
  def index
    @trip = Trip.find(params[:trip_id])
  end

  def new
    @trip = Trip.find(params[:trip_id])
    if current_user
      @review = @trip.reviews.new
      render :new
    else
      flash[:alert] = "You have to log in to leave a travel review."
      redirect_to '/sign_in'
    end
  end

  def create
    @trip = Trip.find(params[:trip_id])
    if current_user
      @review = @trip.reviews.new(review_params)
      @review.user = current_user
      if @review.save
        flash[:notice] = "Thank you for contributing a review!"
        respond_to do |format|
          format.html { redirect_to trip_path(@trip) }
          format.js
        end
      else
        flash[:alert] = @review.errors.full_messages
        render :new
      end
    else
      flash[:alert] = "You have to be logged in to brag about your trip."
      redirect_to '/sign_in'
    end
  end

  def edit
    @trip = Trip.find(params[:trip_id])
    @review = @trip.reviews.find(params[:id])
    if current_user == @review.user
      render :edit
    else
      flash[:alert] = "Whoops! This isn't your review. You'll have to make your own. Have a canapes!"
      redirect_to trip_path(@trip)
    end
  end

  def update
    @trip = Trip.find(params[:trip_id])
    @review = @trip.reviews.find(params[:id])
    if current.user == @review.user
      if @review.update(review_params)
        flash[:notice] = "You have successfully updated this review. Can I pour you a Pan Galactic Gargle Blaster?"
      else
        flash[:alert] = @review.errors.full_messages
        render :edit
      end
    else
      flash[:alert] = "This isn't your review. Oh god, I'm so depressed."
    end
    redirect_to trip_path(@trip)
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    @review = @trip.reviews.find(params[:id])
    if (current_user == @review.user) || current_user.admin?
      @review.destroy
      flash[:notice] = "I hope you grabbed your towel. This review was destroyed to make way for a hyperspace bypass."
    else
      flash[:alert] = "This isn't your review and if you wanted to destroy it, you would have to post a notice in the bottom of a locked filing cabinet stuck in  a disused lavatory."
    end
    redirect_to trip_path(@trip)
  end

private
  def review_params
    params.require(:review).permit(:content)
  end
end
