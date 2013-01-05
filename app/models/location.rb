class Location < ActiveRecord::Base
  attr_accessible :name, :code
  has_many :patients

  validates :name , :length => { :maximum => 80}
  validates :code , :length => { :maximum => 10}
end


