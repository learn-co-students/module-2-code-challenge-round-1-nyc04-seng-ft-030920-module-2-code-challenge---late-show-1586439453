class GuestsController < ApplicationController

  before_action :set_guest, only: [:show]

  def index
    @guests = Guest.all
  end

  def show
  end

  private

  def set_guest
    @guest = Guest.find(params[:id])
  end

  def guest_params
    params.require(:guest).permit(:name, :occupation)
  end

  # def new
  #   @guest = Guest.new
  # end

  # def create
  #   guest = Guest.create(guest_params)
  #   redirect_to new_guest_path
  # end

end
