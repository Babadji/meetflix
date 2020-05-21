class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def index
    @stars = policy_scope(Star)
    @stars = Star.all
  end

  def home
    if params[:query].present?
      sql_query = "name ILIKE :query OR category ILIKE :query"
      @stars = Star.where(sql_query, query: "%#{params[:query]}%")
    else
      @stars = Star.all
    end
  end



  def show
    @star = Star.find(params[:id])
    authorize @star
  end

end
