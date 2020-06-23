class TasksController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_meet, only: %w[create]

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to meet_path(@meet,  anchor: "tasks-title")
    else
      render "meets/show"
    end
  end

  private

  def task_params
    params.require(:task).permit(:nombre, :descripcion, :fecha, :assistance_id)
  end

  def set_meet
    @meet = Meet.find(params[:meet_id])
  end
end
