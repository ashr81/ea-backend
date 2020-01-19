class FeedbackController < ApplicationController
  def create
    if Feedback.create!(feedback_params)
      FeedbackMailer.request_confirmation(feedback_params).deliver_later
      return render json: {success: true}
    end
    return render json: { success: false }
  rescue => e
    render json: {error: e.message}
  end

  private
  def feedback_params
    params.require(:feedback).permit(:email, :subject, :description, :product_id, :platform_id, :topic_id, :issue_id)
  end
end
