module ApplicationHelper
	def medical_record(id)
		"%s%06d" %['MR', id]
	end
end
