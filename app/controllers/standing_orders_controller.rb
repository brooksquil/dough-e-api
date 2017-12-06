class StandingOrdersController < ApplicationController
  before_action :set_standing_order, only: [:show, :update, :destroy]

  # GET /standing_orders
  def index
    @standing_orders = StandingOrder.all

    render json: @standing_orders
  end

  # GET /standing_orders/1
  def show
    render json: @standing_order
  end

  # POST /standing_orders
  def create
    @standing_order = StandingOrder.new(standing_order_params)

    if @standing_order.save
      render json: @standing_order, status: :created, location: @standing_order
    else
      render json: @standing_order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /standing_orders/1
  def update
    if @standing_order.update(standing_order_params)
      render json: @standing_order
    else
      render json: @standing_order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /standing_orders/1
  def destroy
    @standing_order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_standing_order
      @standing_order = StandingOrder.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def standing_order_params
      params.require(:standing_order).permit(:week_day, :quantity, :is_active)
    end
end
