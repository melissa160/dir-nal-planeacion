class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    redirect_to maker_path(@project.maker_id)
  end

  def show
    @project = Project.find(params[:id])
  end

  private   
  def project_params     
  params.require(:project).permit( :nombre,
:apropiacion_inicial, :apropiacion_vigente, :compromisos, :obligaciones,
:pagos).merge(maker_id: params[:maker_id], year_id: 1)
  end
end
