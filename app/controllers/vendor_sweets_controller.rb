class VendorSweetsController < ApplicationController
  def index
    @vendorsweets = VendorSweet.all
  end

  def show
    @vendorsweet = VendorSweet.find(params[:id])
  end

  def new
    @vendorsweet = VendorSweet.new
  end

  def create
    @vendorsweet = VendorSweet.new(vendorsweet_params)
    if @vendorsweet.save
      redirect_to @vendorsweet
    else

      render :new
    end
  end

  def edit
    @vendorsweet = VendorSweet.find(params[:id])
  end

  def update
    @vendorsweet = VendorSweet.find(params[:id])
    if @vendorsweet.update(vendorsweet_params)
      redirect_to @vendorsweet
    else
      render :edit
    end
  end

  private

  def vendorsweet_params
    params.require(:vendor_sweet).permit!
  end
end
