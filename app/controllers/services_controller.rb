class ServicesController < ApplicationController

  def index
    @services = Service.where(user_id: current_user)
  end

  def show
    @service = Service.find(params[:id])
  end

  #no lleva vista

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)

    if @service.save
      redirect_to service_path(@service), notice: 'Se ha creado un nuevo servicio.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @service = Service.find(params[:id])

  end

  def update

  end

  def destroy
    @service.destroy
    redirect_to services_path, status: :see_other
  end

end
