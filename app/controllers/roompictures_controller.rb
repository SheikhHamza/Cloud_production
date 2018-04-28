class RoompicturesController < ApplicationController
  def index
  	@picture = Roompicture.where(room_id: params[:room_id])
  	@room = Room.find(params[:room_id])
  end

  def add_picture
  	@room = Room.find(params[:room_id])
	@picture = @room.roompictures.create(avatar:params[:roompicture][:avatar])
	redirect_to room_roompictures_index_path
  end

  def remove_picture
  	@picture = Roompicture.find(params[:id])
  	@picture.destroy
  	redirect_to room_roompictures_index_path
  end

end
