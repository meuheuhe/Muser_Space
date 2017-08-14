class CategoryController < ApplicationController
    before_action :log_impression1, :only=> [:songwriting_info]
    before_action :log_impression2, :only=> [:cover_info]
    before_action :log_impression3, :only=> [:show_info]
    

  def songwriting
    @songwriting = Songwriting.all
  end

  def cover
    @cover = Cover.all
 
  end

  def show
    @show = Show.all
      
  end
  
  def songwriting_view
    render :layout => 'newlayout'

  end
  
  def songwriting_info
    @songwriting = Songwriting.find(params[:id])
  end
  
  def cover_info
    @cover = Cover.all
  end
  
  def show_info
    @show = Show.all
    
    
  end
    def comment_create
    @comment= Comment.new(songwriting_id: params[:id], content: params[:content])  
  end
  
  def comment_destroy
    @cd=Comment.find(params[:id])
    @cd.destroy
  
  end
  
  
  def like
    Like.create(user_id: current_user.id, songwriting_id: params[:id])
    redirect_to :back
  end
    
  def like_cancel
    Like.find_by(user_id: current_user.id, songwriting_id: params[:id]).destroy
    redirect_to :back
  end
  def like_cover
    Like.create(user_id: current_user.id, cover_id: params[:id])
    redirect_to :back
  end
    
  def like_cancel_cover
    Like.find_by(user_id: current_user.id, cover_id: params[:id]).destroy
    redirect_to :back
  end
  def like_show
    Like.create(user_id: current_user.id, show_id: params[:id])
    redirect_to :back
  end
    
  def like_cancel_show
    Like.find_by(user_id: current_user.id, show_id: params[:id]).destroy
    redirect_to :back
  end

  def log_impression1
      @songwriting = Songwriting.find(params[:id])
      # this assumes you have a current_user method in your authentication system
      @songwriting.impressions.create(ip_address: request.remote_ip,user_id:current_user.id)
  end   
  
  def log_impression2
      @cover = Cover.find(params[:id])
      # this assumes you have a current_user method in your authentication system
      @cover.impressions.create(ip_address: request.remote_ip,user_id:current_user.id)
  end
  
  def log_impression3
      @show = Show.find(params[:id])
      # this assumes you have a current_user method in your authentication system
      @show.impressions.create(ip_address: request.remote_ip,user_id:current_user.id)
  end


end
