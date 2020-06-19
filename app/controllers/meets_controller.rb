class MeetsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_meet, only: %w[show create]

  def index
  end

  def show

  end

  def new
    @meet = Meet.new
  end

  def create
    if @meet.save!
      redirect_to new_meet_assistance_path(@meet)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def set_meet
    @meet = Meet.find(params[:meet_id])
  end

  def meet_params
    params.require(:meet).permit(:nombre, :tipo, :fecha, :lugar)
  end
end
