class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    joins(:boats).catamarans.joins(:captain).select('captains.name')
  end
end
