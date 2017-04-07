class ContactMailer < ApplicationMailer

  def message_mail(contact)
    @contact = contact
    subject = "Nova mensagem - #{@contact.subject}"
    mail(subject: subject)
  end

end