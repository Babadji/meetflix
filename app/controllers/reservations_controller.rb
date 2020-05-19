class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.star = ????
    if reservation.save
      redirect_to @reservation, notice: "Reservation successfully created"
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
