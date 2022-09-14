class BookingsController < ApplicationController
    before_action :set_booking, only: %i[show]
    def index
        @bookings = Booking.all
    end

    def show
    end

    def new
        @bookings = Booking.new
    end

    private

    def set_booking
        @bookings = Booking.find(params[:id])
    end
end
