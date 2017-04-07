class Contact < ApplicationRecord

  after_create :send_mail

  validates_presence_of :email, :subject, :message

  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  
  # TODO: add a #after_create callback to send an email to atendimento@ibta.edu.br

  private

    def send_mail
      ContactMailer.message_mail(self).deliver
    end
end