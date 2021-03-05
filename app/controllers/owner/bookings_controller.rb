class Owner::BookingsController < ApplicationController
  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"

    if @booking.save
      flash[:alert] = 'Request accepted!'
      # when possible redirect to 'All requests'
      redirect_to dashboard_path
    end
  end

  def refuse
    @booking = Booking.find(params[:id])
    @booking.status = "rejected"

    if @booking.save
      flash[:alert] = 'Request rejected!'
      # when possible redirect to 'All requests'
      redirect_to dashboard_path
    end
  end
end
