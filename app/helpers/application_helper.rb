module ApplicationHelper
	def medical_record(id)
		"%s%06d" %['MR', id]
	end

	def user_status(v)
  	if v == 1
  		"normal"
  	elsif v == -1
  		"deleted"
  	end
  end
end
