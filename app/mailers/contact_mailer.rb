class ContactMailer < ApplicationMailer

  def message_mail(id)
    @contact = Contact.find_by(id: id)
    subject = "quanto-preciso: Nova mensagem - #{@contact.subject}"
    mail(to: @contact.email, subject: subject)
  end

end