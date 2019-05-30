class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendors = Vendor.find(prams[:id])
  end

end
