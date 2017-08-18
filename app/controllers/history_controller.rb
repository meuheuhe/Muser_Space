class HistoryController < ApplicationController
  def index
    @songwriting = Songwriting.all
    @like1 = Like.where('user_id' => current_user.id)
    @songwriting_like = @like1.each do |l| Songwriting.where('id' => l.songwriting_id) end
    @cover = Cover.all
    @show = Show.all

  end
  def myspace
  end
  def mymuser
  end
  def myheart
  end
end
