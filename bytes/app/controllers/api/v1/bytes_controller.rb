class Api::V1::BytesController < ApplicationController
  before_action :set_byte, only: [:show, :update, :destroy]

  # GET /bytes
  # GET /bytes.json
  def index
    @bytes = Byte.all
  end

  # GET /bytes/1
  # GET /bytes/1.json
  def show
  end

  # POST /bytes
  # POST /bytes.json
  def create
    @byte = Byte.new(byte_params)

    if @byte.save
      render :show, status: :created, location: @byte
    else
      render json: @byte.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bytes/1
  # PATCH/PUT /bytes/1.json
  def update
    if @byte.update(byte_params)
      render :show, status: :ok, location: @byte
    else
      render json: @byte.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bytes/1
  # DELETE /bytes/1.json
  def destroy
    @byte.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_byte
      @byte = Byte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def byte_params
      params.require(:byte).permit(:body, :user_id)
    end
end
