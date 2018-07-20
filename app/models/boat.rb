class Boat < ActiveRecord::Base
  belongs_to  :captain
  has_many    :boat_classifications
  has_many    :classifications, through: :boat_classifications

  def self.first_five
    boats = []
    Boat.all.each do |boat|
      boats << boat if boat.id <6
    end
    boats
  end
end
