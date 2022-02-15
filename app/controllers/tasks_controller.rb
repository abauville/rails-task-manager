class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    if @task.errors.any?
      render "../views/tasks/new.html.erb"
    else
      redirect_to task_path(@task)
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    Task.find(params[:id]).destroy

    redirect_to tasks_path
  end
  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end