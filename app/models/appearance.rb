class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest
    validates :rating, numericality: {in: 1..5}
    validates :guest, uniqueness: {scope: :episode, message: 'already appears on this episode'}
    validates :guest, presence: true
    validates :episode, presence: true

    def self.avg_rating(appearances)
        ratings = appearances.map(&:rating)
        avg = ratings.sum/ratings.count.to_f
        avg.round(2)
    end

    def sort_by_rating
        order(rating: :desc)
    end

    def date_format
        "#{episode.date.strftime("%B %d, %Y")}"
    end

    def det_format
        " - Episode #{episode.number}: #{rating} stars"
    end
end
