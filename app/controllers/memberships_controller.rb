class MembershipsController < ApplicationController

  def create

  end


  def destroy

  end

  private
  def user_params
    params.require(:membership).permit(:name, :role)
  end

end
