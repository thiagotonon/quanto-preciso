class Scraper

	FULL_URL_ADDRESS = "http://www.ibta.edu.br/Noticias"

	attr_accessor :agent, :url

	def initialize(attrs={})
		self.agent = build_agent
		self.url = FULL_URL_ADDRESS
	end

	def call
		raw_html = agent.get(url)
		raw_html.search('.cp.b.uC').each do |notice|
			# set title and posted_date
			# visit notice page
			# set main image and the raw content
		end
	end

	private

		def build_agent
			Mechanize.new do |a|
	      a.ssl_version = :TLSv1
	      a.follow_meta_refresh = true
	      a.follow_redirect = true
	      a.agent.http.verify_mode = OpenSSL::SSL::VERIFY_NONE
	    end
		end

end