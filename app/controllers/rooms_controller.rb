class RoomsController < ApplicationController
  def create
    @room = Room.new room_params
    if @room.save
      @room.admins.create user_id: current_user.id
      @room.join_rooms.create user_id: current_user.id
      flash[:success] = "Create room success!"
      redirect_to root_path
    else
      flash[:danger] = "Info invalid! Try again!"
    end
  end

  private

  def room_params
    params.require(:room).permit(:room_type, :name, :description)
  end
end
