class QuantityTypesController < ApplicationController
  before_action :set_quantity_type, only: [:show, :update, :destroy]

  # GET /quantity_types
  def index
    @quantity_types = QuantityType.all

    render json: @quantity_types
  end

  # GET /quantity_types/1
  def show
    render json: @quantity_type
  end

  # POST /quantity_types
  def create
    @quantity_type = QuantityType.new(quantity_type_params)

    if @quantity_type.save
      render json: @quantity_type, status: :created, location: @quantity_type
    else
      render json: @quantity_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quantity_types/1
  def update
    if @quantity_type.update(quantity_type_params)
      render json: @quantity_type
    else
      render json: @quantity_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quantity_types/1
  def destroy
    @quantity_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quantity_type
      @quantity_type = QuantityType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quantity_type_params
      params.require(:quantity_type).permit(:name, :quantity)
    end
end
