class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    find_episode
    avg_rating
  end

  private
  def find_episode
    @episode = Episode.find(params[:id])
  end

  def avg_rating
    num_of_appearanes = @episode.appearances.length
    @avg_rating = 0

    if num_of_appearanes >= 1
      @episode.appearances.each { |appearance|
        @avg_rating += appearance.rating
      }
      @avg_rating = @avg_rating / num_of_appearanes
    end
  end

end
