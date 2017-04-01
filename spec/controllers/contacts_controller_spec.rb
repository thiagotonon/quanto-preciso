require "rails_helper"

RSpec.describe ContactsController, type: :controller do

  context "POST #create" do
    context "with valid data" do
      before { @params = attributes_for(:contact) }

      it "increases Contact count by one" do
        expect{
          post :create, params: { contact: @params }
        }.to change{ Contact.count }.by(1)
      end

      it "returns the created contact as json" do
        post :create, params: { contact: @params }
        json = JSON.parse(response.body)

        expect(json["subject"]).to eq(@params[:subject])
        expect(json["email"]).to eq(@params[:email])
        expect(json["message"]).to eq(@params[:message])
      end

      it "returns a 200 http status code" do
        post :create, params: { contact: @params }
        expect(response).to have_http_status(200)
      end
    end

    context "with invalid data" do
      before { @params = { subject: nil, email: nil, message: nil } }

      it "does not increase Contact count" do
        expect{
          post :create, params: { contact: @params }
        }.to_not change{ Contact.count }
      end

      it "returns a contact errors json" do
        post :create, params: { contact: @params }
        json = JSON.parse(response.body)

        expect(json["email"]).to eq(["can't be blank", "is invalid"])
        expect(json["subject"]).to eq(["can't be blank"])
        expect(json["message"]).to eq(["can't be blank"])
      end

      it "returns a 422 http status code" do
        post :create, params: { contact: @params }
        expect(response).to have_http_status(422)
      end
    end
  end

end