class SongwritingsController < ApplicationController
  def create
    Songwriting.create(title: params[:songwriting][:title], content: params[:songwriting][:content],
                       user_id: params[:user_id], user_name: params[:user_name],
                       user_email: params[:user_email])
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
  
  def comment_create
    @comment= Comment.new(songwriting_id: params[:id], content: params[:content])  
  end
  
  def comment_destroy
    @cd=Comment.find(params[:id])
    @cd.destroy
  
  end
  


end
