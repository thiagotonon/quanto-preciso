class NoticesController < ApplicationController

  def index
    @notices = Notice.order(posted_at: :desc).limit(5)
    render json: @notices, each_serializer: Notice::IndexSerializer
  end

  def show
    @notice = Notice.find_by(id: params[:id])
    render json: @notice, serializer: Notice::ShowSerializer
  end

end