class BoatsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_boat, only: %i[show edit update destroy]

  def index
    @boats = Boat.all
    if params[:query].present?
      @boats = Boat.search_by_name(params[:query])
    end
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save!
    redirect_to boats_path(@boat)
    end
  end

  def edit
  end

  def update
    boat.update!(boat_params)
    redirect_to boats_path(@boat)
  end

  def destroy
    @boat.destroy
    redirect_to boats_my_boats_path, status: :see_other
  end

  def my_boats
    @boats = Boat.where(user_id: current_user)
  end

  private

  def boat_params
    params.require(:boat).permit(:name_boat, :price_per_day, :construction_year, :puissance, :max_person, :photo)
  end

  def set_boat
    @boat = Boat.find(params[:id])
  end
end
