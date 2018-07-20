class Captain < ActiveRecord::Base
  has_many :boats

  def classifications_join
    joins(boats: :classifications)
  end

  def self.catamaran_operators
    classifications_join.where('classifications.name = "Catamaran"')
  end

  def sailors
    classifications_join.where('classifications.name = "Sailboat"')
  end
end
