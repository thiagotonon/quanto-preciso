class Contact < ApplicationRecord

  validates_presence_of :email, :subject, :message

  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  
  # TODO: add a #after_create callback to send an email to atendimento@ibta.edu.br

end