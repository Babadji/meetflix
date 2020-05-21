class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    authorize @user
    @reservations = Reservation.all
  end
end
