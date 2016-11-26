class RestaurantReviewsController < ApplicationController
  def index
    @restaurant_reviews = RestaurantReview.page(params[:page]).per(10)

    render("restaurant_reviews/index.html.erb")
  end

  def show
    @restaurant_review = RestaurantReview.find(params[:id])

    render("restaurant_reviews/show.html.erb")
  end

  def new
    @restaurant_review = RestaurantReview.new

    render("restaurant_reviews/new.html.erb")
  end

  def create
    @restaurant_review = RestaurantReview.new

    @restaurant_review.overall_rating = params[:overall_rating]
    @restaurant_review.tips_received = params[:tips_received]
    @restaurant_review.feedback = params[:feedback]
    @restaurant_review.work_again = params[:work_again]
    @restaurant_review.restaurant_id = params[:restaurant_id]
    @restaurant_review.shift_id = params[:shift_id]

    save_status = @restaurant_review.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/restaurant_reviews/new", "/create_restaurant_review"
        redirect_to("/restaurant_reviews")
      else
        redirect_back(:fallback_location => "/", :notice => "Restaurant review created successfully.")
      end
    else
      render("restaurant_reviews/new.html.erb")
    end
  end

  def edit
    @restaurant_review = RestaurantReview.find(params[:id])

    render("restaurant_reviews/edit.html.erb")
  end

  def update
    @restaurant_review = RestaurantReview.find(params[:id])

    @restaurant_review.overall_rating = params[:overall_rating]
    @restaurant_review.tips_received = params[:tips_received]
    @restaurant_review.feedback = params[:feedback]
    @restaurant_review.work_again = params[:work_again]
    @restaurant_review.restaurant_id = params[:restaurant_id]
    @restaurant_review.shift_id = params[:shift_id]

    save_status = @restaurant_review.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/restaurant_reviews/#{@restaurant_review.id}/edit", "/update_restaurant_review"
        redirect_to("/restaurant_reviews/#{@restaurant_review.id}", :notice => "Restaurant review updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Restaurant review updated successfully.")
      end
    else
      render("restaurant_reviews/edit.html.erb")
    end
  end

  def destroy
    @restaurant_review = RestaurantReview.find(params[:id])

    @restaurant_review.destroy

    if URI(request.referer).path == "/restaurant_reviews/#{@restaurant_review.id}"
      redirect_to("/", :notice => "Restaurant review deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Restaurant review deleted.")
    end
  end
end
