module Properties
  class LandsController < ApplicationController
    def new
      @taxpayer = Taxpayer.find(params[:taxpayer_id])
      @land = @taxpayer.land_properties.build
      @land.build_address
    end
    def create
      @taxpayer = Taxpayer.find(params[:taxpayer_id])
      @land = @taxpayer.land_properties.create(address_params)
      if @land.save
        redirect_to properties_land_url(@land), notice: "Real property information saved successfully."
      else
        render :new
      end
    end

    def show
      @land = Properties::Land.find(params[:id])
    end

    private
        def address_params
          params.require(:properties_land).permit(:arp_number,:land_area, address_attributes:[:street, :barangay, :municipality, :province])
        end
  end
end
