class BoatsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def my_boats
  @boats = Boat.where(user_id: current_user)
  end

  # private
  # def article_params
  #   params.require(:article).permit(:title, :body, :photo)
  # end

end
