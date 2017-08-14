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
    @cover = Cover.find(params[:id])
  end
  
  def show_info
    @show = Show.find(params[:id])
  end
  
  def sw_comment_create
    @comment= SwComment.create(songwriting_id: params[:songwriting_id], content: params[:content]) 
    redirect_to :back
  end
  
  def sw_comment_destroy
    @cd = SwComment.find(params[:songwriting_id])
    @cd.destroy
    redirect_to :back
  end
  
  def c_comment_create
    @comment= CComment.create(cover_id: params[:cover_id], content: params[:content]) 
    redirect_to :back
  end
  
  def c_comment_destroy
    @cd = CComment.find(params[:cover_id])
    @cd.destroy
    redirect_to :back
  end
  
  def s_comment_create
    @comment= SComment.create(show_id: params[:show_id], content: params[:content]) 
    redirect_to :back
  end
  
  def s_comment_destroy
    @cd = SComment.find(params[:show_id])
    @cd.destroy
    redirect_to :back
  end
  
  
  def like
    Like.create(user_id: current_user.id, songwriting_id: params[:id])
    redirect_to :back
  end
    
  def like_cancel
    Like.find_by(user_id: current_user.id, songwriting_id: params[:id]).destroy
    redirect_to :back
  end
  def like2
    Like2.create(user_id: current_user.id, cover_id: params[:id])
    redirect_to :back
  end
    
  def like2_cancel
    Like2.find_by(user_id: current_user.id, cover_id: params[:id]).destroy
    redirect_to :back
  end
  def like3
    Like3.create(user_id: current_user.id, show_id: params[:id])
    redirect_to :back
  end
    
  def like3_cancel
    Like3.find_by(user_id: current_user.id, show_id: params[:id]).destroy
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
