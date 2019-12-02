class BridesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bride, only: [:show, :edit, :update, :destroy]

  # GET /brides
  # GET /brides.json
  def index
    @brides = Bride.all
  end

  # GET /brides/1
  # GET /brides/1.json
  def show
  end

  # GET /brides/new
  def new
    @bride = Bride.new
  end

  # GET /brides/1/edit
  def edit
  end

  # POST /brides
  # POST /brides.json
  def create
    @bride = Bride.new(bride_params)

    respond_to do |format|
      if @bride.save
        format.html { redirect_to @bride, notice: 'Bride was successfully created.' }
        format.json { render :show, status: :created, location: @bride }
      else
        format.html { render :new }
        format.json { render json: @bride.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brides/1
  # PATCH/PUT /brides/1.json
  def update
    respond_to do |format|
      if @bride.update(bride_params)
        format.html { redirect_to @bride, notice: 'Bride was successfully updated.' }
        format.json { render :show, status: :ok, location: @bride }
      else
        format.html { render :edit }
        format.json { render json: @bride.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brides/1
  # DELETE /brides/1.json
  def destroy
    @bride.destroy
    respond_to do |format|
      format.html { redirect_to brides_url, notice: 'Bride was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bride
      @bride = Bride.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bride_params
      params.require(:bride).permit(:name, :email, :birth_date, :gender, :country, :district, :sector, :cell, :phone)
    end
end
