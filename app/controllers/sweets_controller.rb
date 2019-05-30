class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def show
    @sweet = Sweet.find(params[:id])
  end

  def new
    @sweet = Sweet.new
  end

  def create
    @sweet = Sweet.new(sweet_params)
    if @sweet.save
      redirect_to @sweet
    else
      render :new
    end
  end

  def edit
    @sweet = Sweet.find(params[:id])
  end

  def update
    @sweet = Sweet.find(params[:id])
    if @sweet.update(sweet_params)
      redirect_to @sweet
    else
      render :edit
    end
  end

  private

  def sweet_params
    params.require(:sweet).permit!
  end
end
