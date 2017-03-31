class Scraper

  NOTICES_URL = "http://www.ibta.edu.br/Noticias"

  attr_accessor :agent, :params

  def initialize
    self.agent = build_agent
  end

  def call
    notices_page = agent.get(NOTICES_URL)
    notices_page.search('.cp.b.uC').each do |notice_li|
      params = {}
      params[:title], params[:posted_at] = split_title_and_posted_at(notice_li.text)

      notice = Notice.find_by(title: params[:title], posted_at: params[:posted_at])

      unless notice
        notice_url = notice_li.attributes.values.select{|val| val.name == "onclick" }.first.value.split("=").last.gsub("'", "")
        notice_page = agent.get(notice_url)
        params[:description] = notice_page.search(".conteudo.text p").text.strip rescue nil
        params[:image] = notice_page.search(".conteudo.text img").first.attributes["src"].value rescue nil
        
        create_notice(params)
      end
    end
  end

  private

    def create_notice(params)
      Notice.create(params)
    end

    def split_title_and_posted_at(text)
      posted_at, title = text.split("-", 2)
      return title.strip, Date.strptime(posted_at.strip, "%d/%m/%y")
    end

    def build_agent
      Mechanize.new do |a|
        a.ssl_version = :TLSv1
        a.follow_meta_refresh = true
        a.follow_redirect = true
        a.agent.http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      end
    end

end