class TaxpayersController < ApplicationController
  def index
    @taxpayers = Taxpayer.all 
  end
  def new
    @taxpayer = Taxpayer.new
  end

  def create
    @taxpayer = Taxpayer.create(taxpayer_params)
    if @taxpayer.save
      redirect_to @taxpayer, notice: 'Taxpayer information saved successfully.'
    else
      render :new
    end
  end

  def show
    @taxpayer = Taxpayer.find(params[:id])
  end
  private
  def taxpayer_params
    params.require(:taxpayer).permit(:first_name, :last_name, :email, :password, :password_confirmation, :mobile)
  end
end
