require "rails_helper"

RSpec.describe NoticesController, type: :controller do
  
  let!(:notices) { create_list(:notice, 5) }
  let!(:notice) { notices.first }

  describe "GET #index" do
    before { get :index }

    it "assigns all notices to @notices" do
      expect(assigns(:notices)).to eq(notices)
    end

    it "renders a notices json" do
      json = JSON.parse(response.body)
      expect(json.length).to eq(notices.length)
    end

    it "return a 200 http status code" do
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #show" do
    before { get :show, params: { id: notice.id } }

    it "assigns passed notice to @notice" do
      expect(assigns(:notice)).to eq(notice)
    end

    it "renders a notice json" do
      json = JSON.parse(response.body)
      expect(json["id"]).to eq(notice.id)
      expect(json["title"]).to eq(notice.title)
    end

    it "return a 200 http status code" do
      expect(response).to have_http_status(200)
    end
  end

end