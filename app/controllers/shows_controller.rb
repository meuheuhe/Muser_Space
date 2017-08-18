class ShowsController < ApplicationController
  def create
    file_pic = params[:show][:show_pic]
    uploader_pic = ShowPicUploader.new
    uploader_pic.store!(file_pic)
    
    file_mic = params[:show][:show_mic]
    uploader_mic = ShowMicUploader.new
    uploader_mic.store!(file_mic)
  
    Show.create(title: params[:show][:title], content: params[:show][:content], teamname: params[:show][:teamname],
                       user_id: params[:user_id], user_name: params[:user_name],
                       user_email: params[:user_email], show_pic: uploader_pic.url, show_mic: uploader_mic.url)
    redirect_to '/'
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    @show.update_attributes(title: params[:show][:title], content: params[:show][:content])
    redirect_to '/'
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy
    redirect_to '/'
  end
  
  def comment_create
    @comment= Comment.new(show_id: params[:id], content: params[:content])  
  end
  
  def comment_destroy
    @cd=Comment.find(params[:id])
    @cd.destroy
  
  end

  
end
