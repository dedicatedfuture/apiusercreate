module Itunes

	def song(term)
		api_call(term, "music")
	end

	def api_call(term, entity)
		uri = URI("http://itunes.apple.com/search?term=#{term}&entity=#{entity}")
		JSON.parse(Net::HTTP.get(uri))["results"]
	end


end