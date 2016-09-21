module TitlesHelper
	def get_titles
		Title.all.pluck(:title)
	end
end
