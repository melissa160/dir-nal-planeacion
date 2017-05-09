class MakersController < ApplicationController
  
  def index
    @makers = Maker.all
  end
  
  def new
    @maker = Maker.new
  end

  def create
    @maker = Maker.create(maker_params)
    redirect_to maker_path(@maker.id)
  end

  def show
    @maker = Maker.find(params[:id])
  end

  def edit
    @maker = Maker.find(params[:id])
  end

  def update
    @maker = Maker.find(params[:id])
    @maker.update(maker_params)
    redirect_to makers_path
  end

  def destroy
    @maker = Maker.find(params[:id])
    @maker.destroy
    redirect_to makers_path
  end

  private 
  def maker_params
    params.require(:maker).permit(:codigo, :sector, :unidad_ejecutora)
  end

end
