class AppMail < ActionMailer::Base
  default from: 'lol@bumonka.com'
  layout 'e-mailer'
end
