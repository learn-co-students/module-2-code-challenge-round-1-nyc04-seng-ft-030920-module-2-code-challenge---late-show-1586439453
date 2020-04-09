class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :rating, length: { in: 0..5 }
    
end
