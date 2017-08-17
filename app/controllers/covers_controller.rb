class CoversController < ApplicationController
  def create
    file_pic = params[:cover][:cover_pic]
    uploader_pic = CoverPicUploader.new
    uploader_pic.store!(file_pic)
    
    file_mic = params[:cover][:cover_mic]
    uploader_mic = CoverMicUploader.new
    uploader_mic.store!(file_mic)
    
    
    Cover.create(title: params[:cover][:title], content: params[:cover][:content], original: params[:cover][:original], lyrics: params[:cover][:lyrics],
                       user_id: params[:user_id], user_name: params[:user_name],
                       user_email: params[:user_email], cover_pic: uploader_pic.url,  cover_mic: uploader_mic.url)
    redirect_to '/'
  end

  def edit
    @cover = Cover.find(params[:id])
  end

  def update
    @cover = Cover.find(params[:id])
    @cover.update_attributes(title: params[:cover][:title], content: params[:cover][:content])
    redirect_to '/'
  end

  def destroy
    @cover = Cover.find(params[:id])
    @cover.destroy
    redirect_to '/'
  end
  def comment_create
    @comment= Comment.new(cover_id: params[:id], content: params[:content])  
  end
  
  def comment_destroy
    @cd=Comment.find(params[:id])
    @cd.destroy
  
  end


end
