require "rails_helper"

RSpec.describe Scraper, type: :service do

  let!(:scraper) { described_class.new }

  describe "#call" do
    it "returns asdohashdas" do
      scraper.call
    end
  end

end