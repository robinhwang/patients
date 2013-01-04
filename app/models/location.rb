class Location < ActiveRecord::Base
  attr_accessible :name, :code
  has_many :patients

  validates :name , :presence => :true, :length => { :maxmium => 80}
  validates :code , 									  :length => { :maxmium => 10}
end


