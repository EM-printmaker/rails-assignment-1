class PlansController < ApplicationController
  def index
    @plans = Plan.all
  end

  def new
    @plan = Plan.new
  end
  
  def create
    @plan = Plan.new(params.require(:plan).permit(:title, :start_date, :end_date, :all_day, :memo))
    if @plan.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to :plans
    else
      render "new"
    end
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
