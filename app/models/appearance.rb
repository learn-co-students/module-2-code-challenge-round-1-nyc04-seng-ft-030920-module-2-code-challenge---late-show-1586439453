class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, numericality: { 
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 0
  }


  # def average_rating
    #     values = self.rating
    #     values.inject(0){|sum,x| sum+x }
    #     average = values.sum / values.size.to_f
    #     return average
    # end

end
