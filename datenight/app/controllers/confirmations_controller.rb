class ConfirmationsController < ApplicationController

  def index
    @restaurant = params["restaurant_name"]
    @movie = params["movie"]
  end

	private
  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.new(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def confirmation_params
    params.require(:movie, :restaurant_name).permit(:name)
  end
end
