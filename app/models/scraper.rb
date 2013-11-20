class Scraper
  attr_accessor :url

  def initialize(url)
    @url = url
  end

  def get_hrefs
    response = HTTParty.get(@url)
    doc = Nokogiri::HTML(response)
    hrefs = doc.css('a').map {|link| link['href']}
    hrefs.map do |href|
      if href.index('http')
        href
      else
        if @url.last == '/'
          @url + href
        else
          @url + '/' + href
        end
      end
    end

  end

  def get_images
    response = HTTParty.get(@url)
    doc = Nokogiri::HTML(response)
    images = doc.css('img').map {|image| image['src']}
    images.map do |image|
      if image.index('http')
        image
      else
        if @url.last == '/'
          @url + image
        else
          @url + '/' + image
        end
      end
    end

  end

end
