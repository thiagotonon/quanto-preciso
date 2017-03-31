require "rails_helper"

RSpec.describe Scraper, type: :service do

  let!(:scraper) { described_class.new }

  describe "#create_notice" do
    context "with valid data" do
      it "increases Notice count by one" do
        params = { title: "Testing", posted_at: Date.today }

        expect{
          scraper.send(:create_notice, params)
        }.to change{ Notice.count }.by(1)
      end
    end

    context "with invalid data" do
      it "does not increase Notice count" do
        params = { title: "", posted_at: nil }

        expect{
          scraper.send(:create_notice, params)
          }.to_not change{ Notice.count }
      end
    end
  end

  describe "split_title_and_posted_at" do
    it "returns a array with posted_at and title" do
      text = "10/08/95 - Some spicy title"

      title, posted_at = scraper.send(:split_title_and_posted_at, text)
      expect(posted_at).to eq(Date.strptime("10/08/95", "%d/%m/%y"))
      expect(title).to eq("Some spicy title")
    end
  end

  describe "#build_agent" do
    it "returns a Mechanize instance" do
      expect(scraper.send(:build_agent)).to be_a(Mechanize)
    end
  end

end