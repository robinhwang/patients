module PatientsHelper
	def all_location
		Location.all.map {|l| [l.name, l.id] }
	end
end
