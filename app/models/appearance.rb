class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest
    validates :rating, numericality: {in: 1..5}
    validates :guest, uniqueness: {scope: :episode, message: 'already appears on this episode'}
end
