class Episode < ApplicationRecord
    has_many :appearances 
    has_many :guests , through: :appearances

    def average_rating 
        if self.appearances.size > 0 
            self.appearances.average(:rating)
        else  
            "undefined"
        end 
    end 
end
