class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def guests_exist?
        guests.count > 0
    end
end
