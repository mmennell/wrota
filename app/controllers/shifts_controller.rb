class ShiftsController < ApplicationController
  def index
    @q = Shift.ransack(params[:q])
    @shifts = @q.result(:distinct => true).includes(:role, :staff, :staff_review, :restaurant_review).page(params[:page]).per(10)

    render("shifts/index.html.erb")
  end

  def show
    @shift = Shift.find(params[:id])

    render("shifts/show.html.erb")
  end

  def new
    @shift = Shift.new

    render("shifts/new.html.erb")
  end

  def create
    @shift = Shift.new

    @shift.start_time = params[:start_time]
    @shift.end_time = params[:end_time]
    @shift.role_id = params[:role_id]
    @shift.bonus = params[:bonus]
    @shift.bonus_terms = params[:bonus_terms]
    @shift.staff_id = params[:staff_id]
    @shift.allocated = params[:allocated]

    save_status = @shift.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/shifts/new", "/create_shift"
        redirect_to("/shifts")
      else
        redirect_back(:fallback_location => "/", :notice => "Shift created successfully.")
      end
    else
      render("shifts/new.html.erb")
    end
  end

  def edit
    @shift = Shift.find(params[:id])

    render("shifts/edit.html.erb")
  end

  def update
    @shift = Shift.find(params[:id])

    @shift.start_time = params[:start_time]
    @shift.end_time = params[:end_time]
    @shift.role_id = params[:role_id]
    @shift.bonus = params[:bonus]
    @shift.bonus_terms = params[:bonus_terms]
    @shift.staff_id = params[:staff_id]
    @shift.allocated = params[:allocated]

    save_status = @shift.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/shifts/#{@shift.id}/edit", "/update_shift"
        redirect_to("/shifts/#{@shift.id}", :notice => "Shift updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Shift updated successfully.")
      end
    else
      render("shifts/edit.html.erb")
    end
  end

  def destroy
    @shift = Shift.find(params[:id])

    @shift.destroy

    if URI(request.referer).path == "/shifts/#{@shift.id}"
      redirect_to("/", :notice => "Shift deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Shift deleted.")
    end
  end
end
