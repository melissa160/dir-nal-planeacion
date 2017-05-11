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

  def edit
    @maker = Maker.find(params[:maker_id])
    @project = Project.find(params[:id])
    @year = Year.all
  end

  def update
    @maker = Maker.find(params[:maker_id])
    @project = @maker.projects.find(params[:id]) if @maker
    @project.update(project_params)
    redirect_to maker_path(@project.maker_id)
  end

  def destroy
    @maker = Maker.find(params[:maker_id])
    @project = @maker.projects.find(params[:id]) if @maker
    @project.destroy
    redirect_to maker_path(@project.maker_id)
  end


  private   
  def project_params     
  params.require(:project).permit( :nombre,
:apropiacion_inicial, :apropiacion_vigente, :compromisos, :obligaciones,
:pagos).merge(maker_id: params[:maker_id], year_id: params[:year_id][:year_id] )
  end
end
