class EpisodesController < ApplicationController

  def rating_sum
    @average_rating = 0.0
    @episode.appearances.each do |a|
      @average_rating += a.rating.to_f
    end
    @average_rating
  end

  def rating_average
    if rating_sum > 0
      @average_rating = (@average_rating / @episode.appearances.size.to_f).round(2)
    else
      @average_rating = "N/a"
    end
    @average_rating
  end

  def show
    @episode = Episode.find(params[:id])
    @average_rating = rating_average
  end

  def index
    @episodes = Episode.all
  end
end
