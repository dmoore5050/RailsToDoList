class TasksController < ApplicationController

  def new
    @task = Task.new
    redirect_to :root
  end

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.create( params[:task] )
    @task.list_id = params[:list_id]
    @task.save
    flash[:notice] = "Your task has now been listed!"
    redirect_to :root
  end

end
