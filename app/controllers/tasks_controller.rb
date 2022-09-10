class TasksController < ApplicationController
  def index
    @tareas = Task.all
  end

  def show
    @tareas = Task.find(params[:id])
  end

  def new
    @tareas = Task.new
  end

  def create
    @tareas = Task.new(task_params)
    @tareas.save
    redirect_to t_path(@tareas)
  end

  def edit
  end

  def update
    @tareas = Task.find(params[:id])
    @tareas.update(task_params)
    redirect_to t_path(@tareas)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
