class MeetsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  end

  def show

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
  end

  private

  def meet_params
    params.require(:meet).permit(:nombre, :tipo, :fecha, :lugar)
  end
end
