class DeliverySchedulesController < ApplicationController
  before_action :set_delivery_schedule, only: [:show, :edit, :update, :destroy]

  # GET /delivery_schedules
  # GET /delivery_schedules.json
  def index
    @delivery_schedules = DeliverySchedule.all
  end

  # GET /delivery_schedules/1
  # GET /delivery_schedules/1.json
  def show
  end

  # GET /delivery_schedules/new
  def new
    @delivery_schedule = DeliverySchedule.new
  end

  # GET /delivery_schedules/1/edit
  def edit
  end

  # POST /delivery_schedules
  # POST /delivery_schedules.json
  def create
    @delivery_schedule = DeliverySchedule.new(delivery_schedule_params)

    respond_to do |format|
      if @delivery_schedule.save
        format.html { redirect_to @delivery_schedule, notice: 'Delivery schedule was successfully created.' }
        format.json { render :show, status: :created, location: @delivery_schedule }
      else
        format.html { render :new }
        format.json { render json: @delivery_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivery_schedules/1
  # PATCH/PUT /delivery_schedules/1.json
  def update
    respond_to do |format|
      if @delivery_schedule.update(delivery_schedule_params)
        format.html { redirect_to @delivery_schedule, notice: 'Delivery schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivery_schedule }
      else
        format.html { render :edit }
        format.json { render json: @delivery_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_schedules/1
  # DELETE /delivery_schedules/1.json
  def destroy
    @delivery_schedule.destroy
    respond_to do |format|
      format.html { redirect_to delivery_schedules_url, notice: 'Delivery schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_schedule
      @delivery_schedule = DeliverySchedule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def delivery_schedule_params
      params.require(:delivery_schedule).permit(:fsa, :city, :delivery_day)
    end
end
