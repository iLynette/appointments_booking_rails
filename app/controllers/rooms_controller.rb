class RoomsController < ApplicationController
    def index
        @rooms = Room.all
    end

    def show
        
    end

    private
    
    def set_room
        @room = Room.find(params[:id])
    end
end
