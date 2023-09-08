class RequestsController < ApplicationController
  before_action :set_request, only: [:accept, :cancel, :book, :budget, :pay]

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

  def create
    @request = Request.new(params[:id])
    @request.budget = 0
    @request.user_id = current_user
    @request.status = "enviada"

    if @request.save
      redirect_to requests_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def accept
    @request.status = "aceptada"

    if @request.save
      redirect_to requests_path
    else
      render :requests, status: :unprocessable_entity
    end
  end

  def cancel
    @request.status = "cancelada"

    if @request.save
      redirect_to requests_path
    else
      render :requests, status: :unprocessable_entity
    end
  end

  def book
    @request.status = "reservada"

    if @request.save
      redirect_to requests_path
    else
      render :requests, status: :unprocessable_entity
    end
  end

  def budget
    @request.status = "por pagar"

    if @request.save
      redirect_to requests_path
    else
      render :requests, status: :unprocessable_entity
    end
  end

  def pay
    @request.status = "finalizada"

    if @request.save
      redirect_to requests_path
    else
      render :requests, status: :unprocessable_entity
    end
  end

  private

  def set_request
    @request = Request.find(params[:id])
  end
end
