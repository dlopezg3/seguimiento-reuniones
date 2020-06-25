class MeetsController < ApplicationController
  before_action :set_meet, only: %w[show update]

  def index
    @meets = Meet.all
  end

  def show
    @assistances = @meet.assistances
    @task = Task.new
  end

  def new
    @meet = Meet.new
  end

  def create
    @meet = Meet.new(meet_params)
    if @meet.save!
      redirect_to new_meet_assistance_path(@meet)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @meet.update(meet_params)
    if @meet.save!
      redirect_to meet_path(@meet)
    else
      render :show
    end
  end

  private

  def meet_params
    params.require(:meet).permit(:nombre, :tipo, :fecha, :lugar, :notes)
  end

  def set_meet
    @meet = Meet.find(params[:id])
  end
end
