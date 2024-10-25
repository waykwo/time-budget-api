class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render :index
  end

  def show
    @task = Task.find_by(id: params[:id])
    render :show
  end

  def create
    @task = Task.create(
      name: params[:name],
      task_type: params[:task_type],
      description: params[:description],
      status: params[:status],
      start_datetime: params[:start_datetime],
      end_datetime: params[:end_datetime],
      hours_worked: params[:hours_worked],
      project: params[:project],
    )
    render :show
  end

end
