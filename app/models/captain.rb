class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    include(:boat).where('name: "Catamaran"')
  end
end
