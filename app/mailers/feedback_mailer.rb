class FeedbackMailer < ApplicationMailer
  default from: "example@example.com"
  layout 'mailer'

  def request_confirmation(record)
    @description = record.description
    @email = record.email
    @request_id = record.id
    mail(
      from: ENV['APP_FROM_EMAIL'],
      bcc: [ENV['APP_FROM_EMAIL']],
      to: record.email,
      subject: "Request Received: #{record.subject}"
    )
  end
end
