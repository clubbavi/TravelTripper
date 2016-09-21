module FontsHelper
	def get_fonts
		Font.all.pluck(:font)
	end	
end
