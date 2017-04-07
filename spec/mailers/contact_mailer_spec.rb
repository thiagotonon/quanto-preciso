require "rails_helper"

RSpec.describe ContactMailer, type: :mailer do

  let!(:contact) { create(:contact) }
  let!(:mail) { described_class.message_mail(contact) }

  describe "#message_mail" do
    it "returns the mail subject" do
      expect(mail.subject).to match(contact.subject)
    end

    it "returns the mail from" do
      expect(mail.from).to eq(["nao-responda@quantopreciso.com.br"])
    end

    it "returns the mail to" do
      expect(mail.to).to eq(["atendimento@ibta.edu.br"])
    end

    it "prints user email in the email body" do
      expect(mail.body.encoded).to match(contact.email)
    end

    it "prints user subject in the email body" do
      expect(mail.body.encoded).to match(contact.subject)
    end

    it "prints user message in the email body" do
      expect(mail.body.encoded).to match(contact.message)
    end
  end

end