class TasksController < ApplicationController

  def new
    @task = Task.new
    redirect_to :root
  end

  def index
    @tasks = Task.all
  end

  def destroy
    @task = Task.find params[:id]
    @task.destroy
    flash[:notice] = 'Your task has been destroyed!'
    redirect_to :root
  end

  def update
    @task = Task.find params[:id]
    @task.finished = params[:task][:finished]
    @task.save
    flash[:notice] = 'You updated a task!'
    redirect_to :root
  end

  def create
    @task = Task.create( params[:task] )
    @task.list_id = params[:list_id]
    @task.save
    flash[:notice] = 'Your task has now been listed!'
    redirect_to :root
  end

end
