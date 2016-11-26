class StaffReviewsController < ApplicationController
  def index
    @staff_reviews = StaffReview.page(params[:page]).per(10)

    render("staff_reviews/index.html.erb")
  end

  def show
    @staff_review = StaffReview.find(params[:id])

    render("staff_reviews/show.html.erb")
  end

  def new
    @staff_review = StaffReview.new

    render("staff_reviews/new.html.erb")
  end

  def create
    @staff_review = StaffReview.new

    @staff_review.staff_id = params[:staff_id]
    @staff_review.shift_id = params[:shift_id]
    @staff_review.overall_rating = params[:overall_rating]
    @staff_review.punctuality = params[:punctuality]
    @staff_review.appearance = params[:appearance]
    @staff_review.professionalism = params[:professionalism]
    @staff_review.work_ethic = params[:work_ethic]
    @staff_review.hire_again = params[:hire_again]
    @staff_review.private_comments = params[:private_comments]

    save_status = @staff_review.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/staff_reviews/new", "/create_staff_review"
        redirect_to("/staff_reviews")
      else
        redirect_back(:fallback_location => "/", :notice => "Staff review created successfully.")
      end
    else
      render("staff_reviews/new.html.erb")
    end
  end

  def edit
    @staff_review = StaffReview.find(params[:id])

    render("staff_reviews/edit.html.erb")
  end

  def update
    @staff_review = StaffReview.find(params[:id])

    @staff_review.staff_id = params[:staff_id]
    @staff_review.shift_id = params[:shift_id]
    @staff_review.overall_rating = params[:overall_rating]
    @staff_review.punctuality = params[:punctuality]
    @staff_review.appearance = params[:appearance]
    @staff_review.professionalism = params[:professionalism]
    @staff_review.work_ethic = params[:work_ethic]
    @staff_review.hire_again = params[:hire_again]
    @staff_review.private_comments = params[:private_comments]

    save_status = @staff_review.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/staff_reviews/#{@staff_review.id}/edit", "/update_staff_review"
        redirect_to("/staff_reviews/#{@staff_review.id}", :notice => "Staff review updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Staff review updated successfully.")
      end
    else
      render("staff_reviews/edit.html.erb")
    end
  end

  def destroy
    @staff_review = StaffReview.find(params[:id])

    @staff_review.destroy

    if URI(request.referer).path == "/staff_reviews/#{@staff_review.id}"
      redirect_to("/", :notice => "Staff review deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Staff review deleted.")
    end
  end
end
