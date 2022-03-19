class GolongansController < ApplicationController
  before_action :set_golongan, only: %i[ show edit update destroy ]

  # GET /golongans or /golongans.json
  def index
    @golongans = Golongan.all
  end

  # GET /golongans/1 or /golongans/1.json
  def show
  end

  # GET /golongans/new
  def new
    @golongan = Golongan.new
  end

  # GET /golongans/1/edit
  def edit
  end

  # POST /golongans or /golongans.json
  def create
    @golongan = Golongan.new(golongan_params)

    respond_to do |format|
      if @golongan.save
        format.html { redirect_to golongan_url(@golongan), notice: "Golongan was successfully created." }
        format.json { render :show, status: :created, location: @golongan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @golongan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /golongans/1 or /golongans/1.json
  def update
    respond_to do |format|
      if @golongan.update(golongan_params)
        format.html { redirect_to golongan_url(@golongan), notice: "Golongan was successfully updated." }
        format.json { render :show, status: :ok, location: @golongan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @golongan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /golongans/1 or /golongans/1.json
  def destroy
    @golongan.destroy

    respond_to do |format|
      format.html { redirect_to golongans_url, notice: "Golongan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_golongan
      @golongan = Golongan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def golongan_params
      params.require(:golongan).permit(:gapok)
    end
end
