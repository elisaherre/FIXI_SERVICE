class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :accept, :cancel, :book, :budget, :pay, :destroy]

  def index
    @sent_requests = Request.where(user_id: current_user)
    requests = Request.all
    @received_requests = requests.select do |request|
      request.service.user == current_user
    end
  end

  def show
  end

  def new
    @request = Request.new
    @services = Service.where(user_id: params[:fixer_id])
    @fixer = User.find(params[:fixer_id])
  end

  def create
    @request = Request.new(requests_params)
    @request.budget = 0
    @request.user_id = current_user.id
    @request.status = "enviada"

    if @request.save
      redirect_to requests_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def destroy
    @request.destroy
      redirect_to requests_path, status: :see_other
  end

  def accept
    @request.status = "aceptada"
    @request.budget = 20

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

  def requests_params
    params.require(:request).permit(:description, :start_date, :end_date, :service_id, :budget)
  end
end
