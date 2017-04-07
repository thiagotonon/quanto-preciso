require "rails_helper"

RSpec.describe Contact, type: :model do

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:subject) }
  it { is_expected.to validate_presence_of(:message) }

  it { should allow_value("email@email.com").for(:email) }
  it { should_not allow_value("invalid").for(:email) }

  describe "#send_mail" do
    it "changes ActionMailer::Base deliveries count by one" do
      expect{
        create(:contact)
      }.to change{ ActionMailer::Base.deliveries.count }.by(1)
    end
  end

end