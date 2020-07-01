class Meets::PlansController < ApplicationController
  before_action :set_meet, only: :create
  def create
  end

  private

  def set_meet
    @meet = Meet.find(params[:meet_id])
  end
end
