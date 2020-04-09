class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances


    validate :unique_per_episode
    
    def unique_per_episode
        if self.name.exists?(name: name)
            errors.add(:name, "A Guest should only appear on a given Episode once.")
        end
    end
end
