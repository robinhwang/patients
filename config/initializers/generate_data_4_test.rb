puts "Generating data for test...plz wait"
start_time = Time.now


['Test_location_1','Test_location_2'].each do |location|
  Location.find_or_create_by_name location
end

puts "Locations generated"

#add some patients then

Patient.find_or_create_by_middle_name(
    :first_name => "robin",
    :middle_name => "D",
    :last_name => "hwang",
    :birthday => "1992-01-23",
    :gender => "Male",
    :status => "Initial",
    :user_status => 1,
    :location_id => 1,
    :viewed_count => 0)

Patient.find_or_create_by_middle_name(
    :first_name => "robin",
    :middle_name => "C",
    :last_name => "hwang",
    :birthday => "1992-01-23",
    :gender => "Female",
    :status => "Treatment",
    :user_status => 1,
    :location_id => 2,
    :viewed_count => 0)

Patient.find_or_create_by_middle_name(
    :first_name => "robin",
    :middle_name => "B",
    :last_name => "hwang",
    :birthday => "1992-01-23",
    :gender => "Not available",
    :status => "Treatment",
    :user_status => 1,
    :location_id => 3,
    :viewed_count => 0)
end_time = Time.now

take_time = "%.3f"%(end_time - start_time)

puts "Patient generated"
puts "It takes #{take_time} seconds to generate the data"
