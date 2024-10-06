class PlansController < ApplicationController
  def index
    @plans = Plan.all
  end

  def new
    @plans = Plan.new
  end
  
  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
