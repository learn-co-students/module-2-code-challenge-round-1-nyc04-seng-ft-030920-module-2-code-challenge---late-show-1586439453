class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates :rating, numericality: true
    validates :rating, numericality: { greater_than_or_equal_to: 1 }
    validates :rating, numericality: { less_than_or_equal_to: 5 }
end
