class GlucoseChecksController < ApplicationController
  before_action :set_glucose_check, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @glucose_checks = GlucoseCheck.all
    respond_with(@glucose_checks)
  end

  def show
    respond_with(@glucose_check)
  end

  def new
    @glucose_check = GlucoseCheck.new
    respond_with(@glucose_check)
  end

  def edit
  end

  def create
    @glucose_check = GlucoseCheck.new(glucose_check_params)
    @glucose_check.save
    respond_with(@glucose_check)
  end

  def update
    @glucose_check.update(glucose_check_params)
    respond_with(@glucose_check)
  end

  def destroy
    @glucose_check.destroy
    respond_with(@glucose_check)
  end

  private
    def set_glucose_check
      @glucose_check = GlucoseCheck.find(params[:id])
    end

    def glucose_check_params
      params.require(:glucose_check).permit(:glucose)
    end
end
