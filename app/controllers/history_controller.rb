class HistoryController < ApplicationController
  def index
    @songwriting = Songwriting.all
    @like1 = Like.where('user_id' => current_user.id)
    @songwriting_like = @like1.each do |x| Songwriting.where('id' => x.songwriting_id) end
    @like2 = Like2.where('user_id' => current_user.id)
    @cover_like = @like2.each do |x| Cover.where('id' => x.cover_id) end
    @like3 = Like3.where('user_id' => current_user.id)
    @show_like = @like3.each do |x| Show.where('id' => x.show_id) end
    
    # @songwriting_like = @like1.each do |s| Songwriting.where('id' => s.songwriting_id) end
    @cover = Cover.all
    @show = Show.all
    
    #게시물수
    @songwriting_c = Songwriting.where('user_id' => current_user.id).count
    @cover_c = Cover.where('user_id' => current_user.id).count
    @show_c = Show.where('user_id' => current_user.id).count
    @post_c = @songwriting_c + @cover_c + @show_c
 
    
  end
  def myspace
    @songwriting = Songwriting.all
    @cover = Cover.all
    @show = Show.all
    
    @songwriting_c = Songwriting.where('user_id' => current_user.id).count
    @cover_c = Cover.where('user_id' => current_user.id).count
    @show_c = Show.where('user_id' => current_user.id).count
    @post_c = @songwriting_c + @cover_c + @show_c

   
 

  end
  def mymuser
    
    @songwriting_c = Songwriting.where('user_id' => current_user.id).count
    @cover_c = Cover.where('user_id' => current_user.id).count
    @show_c = Show.where('user_id' => current_user.id).count
    @post_c = @songwriting_c + @cover_c + @show_c
 
    
  end
  def myheart
    @songwriting_c = Songwriting.where('user_id' => current_user.id).count
    @cover_c = Cover.where('user_id' => current_user.id).count
    @show_c = Show.where('user_id' => current_user.id).count
    @post_c = @songwriting_c + @cover_c + @show_c
   
   
    @like1 = Like.where('user_id' => current_user.id)
    @songwriting_like = @like1.each do |x| Songwriting.where('id' => x.songwriting_id) end
    @like2 = Like2.where('user_id' => current_user.id)
    @cover_like = @like2.each do |x| Cover.where('id' => x.cover_id) end
    @like3 = Like3.where('user_id' => current_user.id)
    @show_like = @like3.each do |x| Show.where('id' => x.show_id) end
  end
end
