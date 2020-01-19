class FeedbackController < ApplicationController
  def create
    feedback = Feedback.create(feedback_params)
    FeedbackMailer.request_confirmation(feedback_params).deliver_later if feedback.present?
    render json: {success: feedback.present?}
  end

  private
  def feedback_params
    params.permit(:email, :subject, :description, :product_id, :platform_id, :topic_id, :issue_id)
  end
end
