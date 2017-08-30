class PlaylistsController < ApplicationController
  def playlist_create
    @playlist = Playlist.create(songwriting_id: params[:songwriting_id], user_id: params[:user_id], user_name: params[:user_name], content: params[:content], avatar: params[:avatar]) 
    redirect_to :back
  end
  
  def playlist_destroy
    @cd = SwComment.find(params[:songwriting_id])
    @cd.destroy
    redirect_to :back
  end
end
