class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @stars = Star.all
  end

  def index
    @stars = policy_scope(Star)
    @stars = Star.all
  end

  def show
    @star = Star.find(params[:id])
    authorize @star
  end
end
