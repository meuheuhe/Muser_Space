class CoversController < ApplicationController
  def create
    Cover.create(title: params[:cover][:title], content: params[:cover][:content])
    redirect_to '/'
  end

  def edit
    @cover = Cover.find(params[:id])
  end

  def update
    @cover = Cover.find(params[:id])
    @cover.update_attributes(title: params[:cover][:title], content: params[:cover][:content])
    redirect_to '/'
  end

  def destroy
    @cover = Cover.find(params[:id])
    @cover.destroy
    redirect_to '/'
  end
  


end
