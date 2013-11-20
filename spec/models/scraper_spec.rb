require 'spec_helper'

describe Scraper do

  it "should be initialized with a (url) as a parameter" do
    scraper = Scraper.new('http://www.timecube.com')
    expect(scraper.url).to eq('http://www.timecube.com')
  end

  describe ".get_hrefs" do
    it "returns an array of all links on a page" do
      scraper = Scraper.new('http://www.timecube.com')
      expect(scraper.get_hrefs).to be_a(Array)
    end
  end

  describe ".get_images" do
    it "returns an array of all the images on a page" do
      scraper = Scraper.new('http://www.timecube.com')
      expect(scraper.get_images).to be_a(Array)
    end
  end



end
