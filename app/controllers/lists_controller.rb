class ListsController < ApplicationController

  def new
    @list = List.new
    redirect_to :root
  end

  def index
    @lists = List.all
  end

  def create
    @list = List.create( params[:list] )
    flash[:notice] = "Your list has now been listed!"
    redirect_to :root
  end

end
