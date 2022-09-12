class RoomsController < ApplicationController
    before_action :set_room, only: %i[show]
    def index
        @rooms = Room.all
    end

    def show    
    end

    def new
        @room = Room.new
    end

    def create
      @room = Room.new(room_params)
      respond_to do |format|
        if @room.save
            format.html { redirect_to room_url(@room), notice: "Room was created successfully" }
        else
            format.html { render :new, status: :unprocessable_entity}
        end
      end
    end
  end
    private
    def set_room
        @room = Room.find(params[:id])
    end

    def room_params
        params.require(:room).permit(:name, :capacity)
    end