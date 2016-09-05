class Comment < ActiveRecord::Base

	def day_diff()
		return ((comment.created_at-Time.now)/(86400)).round
	end

	def days_ago(days_int)
		if(days_int == 0)
			"today:"
		elsif(days_int == 1)
			"yesterday:"
		elsif(days_int > 1)
			"days ago:"
		end
	end

end
