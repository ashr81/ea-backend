class TopicsController < ApplicationController
  def index
    platform_id = params[:platform_id]
    return render json: {error: "Please select platform"} unless platform_id
    topics = Topic.select([:id, :name]).joins(:platform_topics).where(platform_topics: { platform_id: platform_id})
    return render json: {error: 'Selected platform doesn\'t support any topics'} if topics.empty?
    render json: topics
  end
end
