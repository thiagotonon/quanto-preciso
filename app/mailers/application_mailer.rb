class ApplicationMailer < ActionMailer::Base
  default to: ENV['MAIL_DEFAULT_TO']
  default from: ENV['MAIL_DEFAULT_FROM']
  layout 'mailer'
end
