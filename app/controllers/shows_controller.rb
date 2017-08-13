class ShowsController < ApplicationController
  def create
    Show.create(title: params[:show][:title], content: params[:show][:content])
    redirect_to '/'
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    @show.update_attributes(title: params[:show][:title], content: params[:show][:content])
    redirect_to '/'
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy
    redirect_to '/'
  end

  
end
