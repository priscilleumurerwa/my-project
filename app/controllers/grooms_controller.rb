class GroomsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_groom, only: [:show, :edit, :update, :destroy]

  def index
    @q = Groom.ransack(params[:q])
    @grooms = @q.result(distinct: true)
  end

  def show
  end

  def new
    @groom = Groom.new
  end

  def edit
  end

  def create
    @groom = Groom.new(groom_params)

      if @groom.save
        redirect_to @groom, notice: 'Groom was successfully created.'
      else
        render :new
      end
  end

  def update
      if @groom.update(groom_params)
        redirect_to @groom, notice: 'Groom was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @groom.destroy
      redirect_to grooms_url, notice: 'Groom was successfully destroyed.'
  end

  private
    def set_groom
      @groom = Groom.find(params[:id])
    end

    def groom_params
      params.require(:groom).permit(:name, :email, :birth_date, :gender, :country, :district, :sector, :cell, :phone, :bride_id)
    end
end
