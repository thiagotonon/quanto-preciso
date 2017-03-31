class Contact < ApplicationRecord

  validates_presence_of :email, :subject, :message

  # TODO: add format email validation
  # TODO: add a #after_create callback to send an email to atendimento@ibta.edu.br

end