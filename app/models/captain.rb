class Captain < ActiveRecord::Base
  has_many :boats

  def classifications_join
    joins(boats: :classifications)
  end

  def self.catamaran_operators
    joins(boats: :classifications).where('classifications.name = "Catamaran"')
  end

  def sailors
    joins(boats: :classifications)
  end
end
