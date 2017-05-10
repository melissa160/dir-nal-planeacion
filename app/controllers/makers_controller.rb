class MakersController < ApplicationController
  
  def index
    @makers = Maker.limit(5).order('id desc')
  end

  def search
    @makers = Maker.limit(params[:results]).order('id desc')
    render :index
  end
  
  def import
    Maker.import(params[:file])
    redirect_to root_url, notice: "Ejecutores importados exitosamente"
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
