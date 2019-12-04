class BridesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bride, only: [:show, :edit, :update, :destroy]

  def index
    @brides = Bride.all
  end
  def show
  end
  def new
    @bride = Bride.new
  end
  def edit
  end
  def create
    @bride = Bride.new(bride_params)
      if @bride.save
        redirect_to @bride, notice: 'Bride was successfully created.'
      else
        render :new
      end
  end
  def update
      if @bride.update(bride_params)
        redirect_to @bride, notice: 'Bride was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @bride.destroy
    redirect_to brides_url, notice: 'Bride was successfully destroyed.'
  end

  private
    def set_bride
      @bride = Bride.find(params[:id])
    end

    def bride_params
      params.require(:bride).permit(:name, :email, :birth_date, :gender, :country, :district, :sector, :cell, :phone)
    end
end
