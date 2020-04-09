class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates :rating, numericality: true
    validates :rating, numericality: { greater_than_or_equal_to: 1 }
    validates :rating, numericality: { less_than_or_equal_to: 5 }
    validates_uniqueness_of :episode_id, scope: :episode_id

    # this is how i originally tried to solve "6. Advanced: Additional Appearance Validation" before i found the "validates_uniqueness_of" method lol

    # validate :guest_number
 
    # def guest_number
    #     # if guest.episodes.uniq.length < guest.episodes.length
    #     if guest.episodes.include? @episode
    #         errors.add(:guest_id, "can only be on an episode once.")
    #     end
    # end

end