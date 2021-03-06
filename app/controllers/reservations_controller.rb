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
      redirect_to user_path(current_user), notice: "Reservation successfully created"
    else
      render "stars/show"
    end
  end

  def show
    @reservations = reservation.all
  end

  def find
    @reservation = Reservation.find(params[:id])
    authorize @reservation
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    @reservation.destroy
    redirect_to user_path(current_user)
  end


  private

  def reservation_params
    params.require(:reservation).permit(:start, :end, :total_price)
  end
end
