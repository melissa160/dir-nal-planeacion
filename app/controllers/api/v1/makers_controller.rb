class Api::V1::MakersController < ApiController
  def index
    @makers = Maker.all
    if params[:sector].present?
      sector = params[:sector]
      @makers = @makers.where("sector ILIKE ?", "%#{sector}%")
    end
    
    if params[:unidad_ejecutora].present?
      unidad_ejecutora = params[:unidad_ejecutora]
      @makers = @makers.where("unidad_ejecutora ILIKE ?", "%#{unidad_ejecutora}%")
    end

    if params[:codigo].present?
      codigo = params[:codigo]
      @makers = @makers.where("codigo = ?", "#{codigo.to_i}")
    end
  end
end