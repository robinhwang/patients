require 'test_helper'

class PatientTest < ActiveSupport::TestCase
   test "should not save with none msg present" do
      @patient = Patient.new
      assert @patient.invalid?
      assert @patient.errors.messages.any?
  end

   test "should not be saved with sperate column not filled in" do
    @patient = Patient.new(
      :first_name   => "2",
      :middle_name  => "3",
      :last_name    => "4",
      :birthday     => "1992-01-01",
      :gender       => "Male",
      :status       => "OnTreatment",
      :user_status  => 1,
      :viewed_count => 0
    )
    assert @patient.valid?

    #with first_name nil
    @patient2 = Patient.new(
      :middle_name  => "3",
      :last_name    => "4",
      :birthday     => "1992-01-01",
      :gender       => "Male",
      :status       => "OnTreatment",
      :user_status  => 1,
      :viewed_count => 0
    )
    assert @patient2.invalid?
  end

end
