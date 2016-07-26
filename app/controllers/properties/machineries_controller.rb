module Properties
  class MachineriesController < ApplicationController
    def new
      @taxpayer = Taxpayer.find(params[:taxpayer_id])
      @machinery = @taxpayer.machinery_properties.build
      @machinery.build_address
      @machinery.build_machinery_detail
    end
    def create
      @taxpayer = Taxpayer.find(params[:taxpayer_id])
      @machinery = @taxpayer.machinery_properties.create(address_params)
      if @machinery.save
        redirect_to properties_machinery_url(@machinery), notice: "Real property information saved successfully."
      else
        render :new
      end
    end

    def show
      @machinery = Properties::Machinery.find(params[:id])
    end

    private
        def address_params
          params.require(:properties_machinery).permit(:arp_number,:land_area, address_attributes:[:street, :barangay, :municipality, :province], machinery_detail_attributes: [:description])
        end
  end
end
