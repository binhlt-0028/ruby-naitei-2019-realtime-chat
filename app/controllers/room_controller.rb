class RoomController < ApplicationController
  before_action :load_room
  before_action :current_is_admin

  def destroy
    if @room.administrators.count > 1
      render json: {status: "fail"}
      return
    end
    render json: {status: "success"} if room.destroy
  end
end
