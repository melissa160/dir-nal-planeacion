class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def import
    Project.import(params[:file])
    redirect_to root_url, notice: "Proyectos importados exitosamente"
  end

  def create
    @project = Project.new(project_params)
    @maker = Maker.find(params[:maker_id])
    if @project.save
      redirect_to maker_path(@project.maker_id)
    else
      render 'makers/show'
    end
    
  end

  def show
    @project = Project.find(params[:id])
  end

  private   
  def project_params     
  params.require(:project).permit( :nombre,
:apropiacion_inicial, :apropiacion_vigente, :compromisos, :obligaciones,
:pagos).merge(maker_id: params[:maker_id], year_id: params[:year_id][:year_id] )
  end
end
