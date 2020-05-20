class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    authorize @reservation
    @reservation.user = current_user
    @reservation.star_id = params[:star_id]
    if @reservation.save
      redirect_to root_path, notice: "Reservation successfully created"
    else
      render :new
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    authorize @reservation
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start, :end, :total_price)
  end
end
