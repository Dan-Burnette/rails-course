class CohortsController < ApplicationController

  def index

  end

  def create

  end

  def show

  end
  
  private
  def cohort_params
    params.require(:cohort).permit(:name)
  end
end
