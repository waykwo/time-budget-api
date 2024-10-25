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

  def update
    @task = Task.find_by(id: [params[:id]])
    @task.update(
      name: params[:name] || @task.name,
      task_type: params[:task_type] || @task.task_type,
      description: params[:description] || @task.description,
      status: params[:status] || @task.status,
      start_datetime: params[:start_datetime] || @task.start_datetime,
      end_datetime: params[:end_datetime] || @task.end_datetime,
      hours_worked: params[:hours_worked] || @task.hours_worked,
      project: params[:project] || @task.project,
    )
    render :show
  end

end
