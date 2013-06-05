class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.create( params[:task] )
    flash[:notice] = "Your task has now been listed!"
    redirect_to :root
  end

end
