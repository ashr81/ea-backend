class IssuesController < ApplicationController
  def index
    topic_id = params[:topic_id]
    return render json: {error: "Please select topic"} unless topic_id
    issues = Issue.joins(:topic_issues).where(topic_issues: {topic_id: topic_id})
    return render json: {error: 'Selected topic doesn\'t support any issues'} if issues.empty?
    render json: issues
  end
end
