class CategoryController < ApplicationController
    before_action :log_impression1, :only=> [:songwriting_info]
    before_action :log_impression2, :only=> [:cover_info]
    before_action :log_impression3, :only=> [:show_info]
    

  def songwriting
    @genre = params[:genre]
    if @genre == 'genre1'
      genre_name = '발라드/댄스/팝'
    elsif @genre == 'genre2'
      genre_name = '힙합/알앤비'
    elsif @genre == 'genre3'
      genre_name = '일렉트로닉'
    elsif @genre == 'genre4'
      genre_name = '락/메탈'
    elsif @genre == 'genre5'
      genre_name = '재즈'
    elsif @genre == 'genre6'
      genre_name = '인디'
    end
    @songwriting = Songwriting.where(genre: genre_name).order('created_at DESC')
    if @genre == 'all'
      @songwriting = Songwriting.all.order('created_at DESC')
    end
  end

  def cover
    @cover = Cover.all.order('created_at DESC')
 
  end

  def show
    @show = Show.all.order('created_at DESC')
      
  end
  
  def songwriting_view
    @songwriting = Songwriting.find(params[:id])
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
    @comment= SwComment.create(songwriting_id: params[:songwriting_id], user_id: params[:user_id], user_name: params[:user_name], content: params[:content], avatar: params[:avatar]) 
    redirect_to :back
  end
  
  def sw_comment_destroy
    @cd = SwComment.find(params[:songwriting_id])
    @cd.destroy
    redirect_to :back
  end
  
  def c_comment_create
    @comment= CComment.create(cover_id: params[:cover_id], user_id: params[:user_id], user_name: params[:user_name], content: params[:content], avatar: params[:avatar]) 
    redirect_to :back
  end
  
  def c_comment_destroy
    @cd = CComment.find(params[:cover_id])
    @cd.destroy
    redirect_to :back
  end
  
  def s_comment_create
    @comment= SComment.create(show_id: params[:show_id], user_id: params[:user_id], user_name: params[:user_name], content: params[:content], avatar: params[:avatar]) 
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
