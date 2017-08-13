class MuserchartController < ApplicationController
 
  def index
    @songwriting = Songwriting.all
    @songwriting.each do |p|
      p.ranking_point = p.likes.size #+ p.unique_impression_count
    end
    
    @chart = @songwriting.order('ranking_point DESC')
    
    @cover = Cover.all
    @show = Show.all
  end
end
