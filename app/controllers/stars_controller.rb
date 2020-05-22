class StarsController < ApplicationController

  def index
    @stars = policy_scope(Star)
    @stars = Star.all
  end

  def show
    @star = Star.find(params[:id])
    authorize @star
    @stars = Star.geocoded

    @marker = {
      "lat" => @star.latitude,
      "lng" => @star.longitude
    }

    @markers = []
    @markers << @marker
  end

  def new
    @star = Star.new
    authorize @star
  end

  def edit
    @star = Star.find(params[:id].to_i)
    authorize @star
  end

  def create
    @star = Star.new(star_params)
    @star.user = current_user
    authorize @star
    if @star.save!
      redirect_to star_path(@star)
      # user_path(@user), notice: "Star has been succesfully created"
    else
      render :new
    end
  end

  def update
    if @star.update(star_params)
      redirect_to @star, notice: "Star has been succesfully updated"
    else
      render :edit
    end
  end

  def destroy
    @star = Star.find(params[:id])
    authorize @star
    @star.destroy
    redirect_to user_path(current_user), notice: "Star has been succesfully destroyed"
  end

  private

  def set_star
    @star = Star.find(params[:id])
  end

  def star_params
    params.require(:star).permit(:name, :category, :price, :photo)
  end
end
