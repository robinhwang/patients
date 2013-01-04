class Patient < ActiveRecord::Base
  attr_accessible :first_name, :middle_name, :last_name, :gender, :birthday, :status, :viewed_count, :user_status, :location_id
  
  belongs_to :location

  GENDER = ['Not available', 'Male', 'Female']
  STATUS = ['Initial', 'Referred', 'Treatment', 'Closed']

  scope :onTreatment, where( :status => :Treatment)
  validates :first_name, :middle_name, :last_name, :presence => true
  validates :first_name, :last_name,   						 :length => { :maxmium => 30}
  validates :middle_name, 												 :length => { :maxmium => 10}
end



