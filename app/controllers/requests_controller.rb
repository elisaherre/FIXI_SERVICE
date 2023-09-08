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

  def accept
    @request = Request.find(params[:id])
    @request.status = "aceptada"

    if @request.save
      redirect_to requests_path
    else
      render :requests, status: :unprocessable_entity
    end
  end

  def cancel
    @request = Request.find(params[:id])
    @request.status = "cancelada"

    if @request.save
      redirect_to requests_path
    else
      render :requests, status: :unprocessable_entity
    end
  end

  def book
    @request = Request.find(params[:id])
    @request.status = "reservada"

    if @request.save
      redirect_to requests_path
    else
      render :requests, status: :unprocessable_entity
    end
  end

  def budget
    @request = Request.find(params[:id])
    @request.status = "por pagar"

    if @request.save
      redirect_to requests_path
    else
      render :requests, status: :unprocessable_entity
    end
  end

  def pay
    @request = Request.find(params[:id])
    @request.status = "finalizada"

    if @request.save
      redirect_to requests_path
    else
      render :requests, status: :unprocessable_entity
    end
  end
end
