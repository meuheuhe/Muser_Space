class MuserchartController < ApplicationController
 
  def index
    @songwriting = Songwriting.all
    @sw_chart = @songwriting.order('hits DESC')
    
    @cover = Cover.all
    @c_chart = @cover.order('hits DESC')
    
    @show = Show.all
    @s_chart = @show.order('hits DESC')
  end
end
