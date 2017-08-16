class HomeController < ApplicationController
  def index
    @songwriting1 = Songwriting.order('created_at DESC').first(4)
    @songwriting2 = Songwriting.order('created_at DESC').limit(4).offset(4)
    @songwriting3 = Songwriting.order('created_at DESC').limit(4).offset(8)
    @cover1 = Cover.order('created_at DESC').first(3)
    @cover2 = Cover.order('created_at DESC').limit(3).offset(3)
    @cover3 = Cover.order('created_at DESC').limit(3).offset(6)
    @show1 = Show.order('created_at DESC').first(3)
    @show2 = Show.order('created_at DESC').limit(3).offset(3)
    @show3 = Show.order('created_at DESC').limit(3).offset(6)
    
    @songwriting = Songwriting.all
    @sw_chart = @songwriting.order('hits DESC').take(10)
    
    @show = Show.all
    @s_chart = @show.order('hits DESC').take(4)
  end
  
  def upload
    @songwriting = Songwriting.new
    @cover = Cover.new
    @show = Show.new
    
  end
  def result
    @query = params[:query]
    if params[:query].nil?
      @songwriting = Songwriting.all
      @cover = Cover.all
      @show = Show.all
    else
      @songwriting = Songwriting.where("title LIKE ?", "%#{params[:query]}%")
      @cover = Cover.where("title LIKE ?", "%#{params[:query]}%")
      @show = Show.where("title LIKE ?", "%#{params[:query]}%")
    end
  end
  
end

  # private

  # def search(&block)    
  #   if params[:q]
  #     @results = yield if block_given?

  #     respond_to do |format|
  #       format.html # resources.html.erb
  #       format.json { render json: @results }
  #     end
  #   else
  #     redirect_to root_url, :notice => 'No search query was specified.'
  #   end
  # end


