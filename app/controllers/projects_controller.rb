class ProjectsController < ApplicationController
  def create
    #render plain: params.inspect
    @project = Project.new(project_params)
    if @project.save
        redirect_to welcome_index_path
    end
end
  def destroy
        @project = Project.find(params[:id])
        @project.destroy
    end
    private
        def project_params
            params.require(:project).permit(:title)
        end
end
