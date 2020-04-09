class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def occupation_proper
        occupation.split(/(\W)/).map(&:capitalize).join
    end

    def episodes_exist?
        episodes.count > 0
    end
end
