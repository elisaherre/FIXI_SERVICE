class RequestsController < ApplicationController
  def index
    @sent_requests = Request.where(user_id: current_user)
    requests = Request.all
    @received_requests = requests.select do |request|
      request.service.user == current_user
    end
  end

  def new
    @request = Request.new
  end

  def edit
  end
end
