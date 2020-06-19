class AssistancesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_meet, only: %w[new create]

  def new
    @assistance = Assistance.new
  end

  def create
    @assistance = Assistance.new(assistance_params)
    @assistance.meet = @meet
    if @assistance.save
      redirect_to new_meet_assistance_path(@meet, @assistance)
    else
      render :new
    end
  end

  private

  def set_meet
    @meet = Meet.find(params[:meet_id])
  end

  def assistance_params
    params.require(:assistance).permit(:email, :meet_id)
  end
end
