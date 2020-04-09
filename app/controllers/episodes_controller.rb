class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def new
  end

  def create
  end

  def show
    @episode = Episode.find(params[:id])
    total = 0
    @episode.appearances.each do |appearances|
      total += appearances.rating
      end
    @average = (total/@episode.appearances.length)
  end
end
