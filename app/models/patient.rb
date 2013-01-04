class Patient < ActiveRecord::Base
  attr_accessible :first_name, :middle_name, :last_name, :gender, :birthday, :status, :viewed_count, :user_status, :location_id
  
  belongs_to :location

  GENDER 			= ['Not available', 'Male', 'Female']
  STATUS 			= ['Initial', 'Referred', 'Treatment', 'Closed']
  USER_STATUS = [['deleted', -1],['normal', 1]]

  scope :onTreatment, where( :status => :Treatment)
  
  validates :first_name,  :presence => true,     :length => { :maximum => 30}
  validates :middle_name, :presence => true, 		 :length => { :maximum => 10}
  validates :last_name,   :presence => true,     :length => { :maximum => 30}


  def self.soft_delete(patient)
  	patient.user_status = -1
  end

  def self.soft_delete_rollback(patient)
  	patient.user_status = 1
  end

  def self.patient_name(patient)
    patient.last_name+'*'+patient.first_name+'*'+patient.middle_name
  end

end



