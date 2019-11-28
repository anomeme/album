class SpotsController < ApplicationController

  def show
    @spot = Spot.find(params[:id])
    if (@spot.parent_id == nil)
      @spots = Spot.where(parent_id: @spot.id)
    end
  end

end