module Properties
  class BuildingsController < ApplicationController
    def new
      @taxpayer = Taxpayer.find(params[:taxpayer_id])
      @building = @taxpayer.building_properties.build
      @building.build_address
      @building.build_structural_characteristic
    end
    def create
      @taxpayer = Taxpayer.find(params[:taxpayer_id])
      @building = @taxpayer.building_properties.create(building_params)
      if @building.save
        redirect_to properties_building_url(@building), notice: "Real property information saved successfully."
      else
        render :new
      end
    end

    def show
      @building = Properties::Building.find(params[:id])
    end

    private
        def building_params
          params.require(:properties_building).permit(:arp_number,:land_area, address_attributes:[:street, :barangay, :municipality, :province],structural_characteristic_attributes:[:foundation])
        end
      end
  end
