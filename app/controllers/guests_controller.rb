class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
  end

  def create

  end

  def show
    @guest = Guest.find(params[:id])
    # ratings = @guest.appearances.map do |appearances|
    # appearances.rating
    #   end
    # @sortedratings = ratings.sort.reverse
  end
end
