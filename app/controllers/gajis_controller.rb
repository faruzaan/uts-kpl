class GajisController < ApplicationController
  before_action :set_gaji, only: %i[ show edit update destroy ]

  # GET /gajis or /gajis.json
  def index
    @gajis = Gaji.all
  end

  # GET /gajis/1 or /gajis/1.json
  def show
  end

  # GET /gajis/new
  def new
    @gaji = Gaji.new
  end

  # GET /gajis/1/edit
  def edit
  end

  # POST /gajis or /gajis.json
  def create
    @gaji = Gaji.new(gaji_params)

    respond_to do |format|
      if @gaji.save
        format.html { redirect_to gaji_url(@gaji), notice: "Gaji was successfully created." }
        format.json { render :show, status: :created, location: @gaji }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gaji.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gajis/1 or /gajis/1.json
  def update
    respond_to do |format|
      if @gaji.update(gaji_params)
        format.html { redirect_to gaji_url(@gaji), notice: "Gaji was successfully updated." }
        format.json { render :show, status: :ok, location: @gaji }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gaji.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gajis/1 or /gajis/1.json
  def destroy
    @gaji.destroy

    respond_to do |format|
      format.html { redirect_to gajis_url, notice: "Gaji was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gaji
      @gaji = Gaji.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gaji_params
      params.require(:gaji).permit(:karyawan_id, :desc, :potongan, tunjangan_ids:[])
    end
end
