class FeedbackController < ApplicationController
  def create
    feedback = Feedback.create!(feedback_params)
    if feedback
      FeedbackMailer.request_confirmation(feedback).deliver_later
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
