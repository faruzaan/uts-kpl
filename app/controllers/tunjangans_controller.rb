class TunjangansController < ApplicationController
  before_action :set_tunjangan, only: %i[ show edit update destroy ]

  # GET /tunjangans or /tunjangans.json
  def index
    @tunjangans = Tunjangan.all
  end

  # GET /tunjangans/1 or /tunjangans/1.json
  def show
  end

  # GET /tunjangans/new
  def new
    @tunjangan = Tunjangan.new
  end

  # GET /tunjangans/1/edit
  def edit
  end

  # POST /tunjangans or /tunjangans.json
  def create
    @tunjangan = Tunjangan.new(tunjangan_params)

    respond_to do |format|
      if @tunjangan.save
        format.html { redirect_to tunjangan_url(@tunjangan), notice: "Tunjangan was successfully created." }
        format.json { render :show, status: :created, location: @tunjangan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tunjangan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tunjangans/1 or /tunjangans/1.json
  def update
    respond_to do |format|
      if @tunjangan.update(tunjangan_params)
        format.html { redirect_to tunjangan_url(@tunjangan), notice: "Tunjangan was successfully updated." }
        format.json { render :show, status: :ok, location: @tunjangan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tunjangan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tunjangans/1 or /tunjangans/1.json
  def destroy
    @tunjangan.destroy

    respond_to do |format|
      format.html { redirect_to tunjangans_url, notice: "Tunjangan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tunjangan
      @tunjangan = Tunjangan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tunjangan_params
      params.require(:tunjangan).permit(:nama, :besar_tunjangan)
    end
end
