class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    find_guest
  end

  private
  def find_guest
    @guest = Guest.find(params[:id])
  end
end
