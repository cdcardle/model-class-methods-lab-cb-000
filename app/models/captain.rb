class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Boat.catamarans.joins(:captain).select('captains.name')
  end
end
