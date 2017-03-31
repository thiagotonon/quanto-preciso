class NoticesController < ApplicationController

  def index
    @notices = Notice.all
    render json: @notices
  end

end