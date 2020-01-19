class FeedbackMailer < ApplicationMailer
  default from: "example@example.com"
  layout 'mailer'

  def request_confirmation(params)
    @description = params[:description]
    @email = params[:email]
    mail(
      from: ENV['APP_FROM_EMAIL'],
      bcc: [ENV['APP_FROM_EMAIL']],
      to: params[:email],
      subject: "Request Received: #{params[:subject]}"
    )
  end
end
