class VendorSweetsController < ApplicationController

    def index
        @vendor_sweet = VendorSweet.all
    end

    def new
        @vendor_sweet = VendorSweet.new
    end

    def show
        @vendor_sweet = VendorSweet.find(params[:id])
    end
end
