class SongwritingsController < ApplicationController
  def create
    file = params[:songwriting][:album_pic]
    uploader = AlbumPicUploader.new
    uploader.store!(file)
    
    file_mic = params[:songwriting][:music]
    uploader_mic = MusicUploader.new
    uploader_mic.store!(file_mic)
    
    Songwriting.create(title: params[:songwriting][:title], content: params[:songwriting][:content], genre: params[:songwriting][:genre], lyrics: params[:songwriting][:lyrics],
                       user_id: params[:user_id], user_name: params[:user_name],
                       user_email: params[:user_email], album_pic: uploader.url, music: uploader_mic.url)
    
    

    redirect_to '/' 
  end
  

  def edit
    @songwriting = Songwriting.find(params[:id])
  end

  def update
    @songwriting = Songwriting.find(params[:id])
    @songwriting.update_attributes(title: params[:songwriting][:title], content: params[:songwriting][:content])
    redirect_to '/'
  end

  def destroy
    @songwriting = Songwriting.find(params[:id])
    @songwriting.destroy
    redirect_to '/'
  end
  
  


end
