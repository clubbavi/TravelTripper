module ColorsHelper
	def get_colors
		Color.all.pluck(:name)
	end	
end
