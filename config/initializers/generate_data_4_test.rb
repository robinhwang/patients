#WARNING !!!
#Prase me in only after you've run  rake db:migrate
#since it runs before rake db:migrate and you'll get wrong if you
#just do this

#START OF THE FILE

#puts "Generating data for test...plz wait"

##to prevent autoincrement id , have to generate in this way
#@l1=Location.find_or_create_by_name(
#    :name => 'Test_location_1',
#    :code => '911')
#
#@l2=Location.find_or_create_by_name(
#    :name => 'Test_location_2',
#    :code => '912')
#
#
#@p1=Patient.find_or_create_by_middle_name(
#    :first_name => "robin",
#    :middle_name => "D",
#    :last_name => "hwang",
#    :birthday => "1992-01-23",
#    :gender => "Male",
#    :status => "Initial",
#    :user_status => 1,
#    :location_id => @l1.id,
#    :viewed_count => 0)
#
#@p2=Patient.find_or_create_by_middle_name(
#    :first_name => "robin",
#    :middle_name => "C",
#    :last_name => "hwang",
#    :birthday => "1992-01-23",
#    :gender => "Female",
#    :status => "Treatment",
#    :user_status => 1,
#    :location_id => @l2.id,
#    :viewed_count => 0)
#
#@p3=Patient.find_or_create_by_middle_name(
#    :first_name => "robin",
#    :middle_name => "B",
#    :last_name => "hwang",
#    :birthday => "1992-01-23",
#    :gender => "Not available",
#    :status => "Treatment",
#    :user_status => 1,
#    :location_id => @l1.id,
#    :viewed_count => 0)
