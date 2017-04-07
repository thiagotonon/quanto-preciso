class ContactMailer < ApplicationMailer

  def message_mail(contact)
    @contact = contact
    subject = "Nova mensagem - #{@contact.subject}"
    # mail(to: "thiagotonon2@gmail.com", subject: subject)
    mail(to: "atendimento@ibta.edu.br", subject: subject)
  end

end