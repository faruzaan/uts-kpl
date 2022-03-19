class KaryawansController < ApplicationController
  before_action :set_karyawan, only: %i[ show edit update destroy ]

  # GET /karyawans or /karyawans.json
  def index
    @karyawans = Karyawan.all
  end

  # GET /karyawans/1 or /karyawans/1.json
  def show
  end

  # GET /karyawans/new
  def new
    @karyawan = Karyawan.new
  end

  # GET /karyawans/1/edit
  def edit
  end

  # POST /karyawans or /karyawans.json
  def create
    @karyawan = Karyawan.new(karyawan_params)

    respond_to do |format|
      if @karyawan.save
        format.html { redirect_to karyawan_url(@karyawan), notice: "Karyawan was successfully created." }
        format.json { render :show, status: :created, location: @karyawan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @karyawan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /karyawans/1 or /karyawans/1.json
  def update
    respond_to do |format|
      if @karyawan.update(karyawan_params)
        format.html { redirect_to karyawan_url(@karyawan), notice: "Karyawan was successfully updated." }
        format.json { render :show, status: :ok, location: @karyawan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @karyawan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /karyawans/1 or /karyawans/1.json
  def destroy
    @karyawan.destroy

    respond_to do |format|
      format.html { redirect_to karyawans_url, notice: "Karyawan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_karyawan
      @karyawan = Karyawan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def karyawan_params
      params.require(:karyawan).permit(:golongan_id, :nama, :jns_klm)
    end
end
