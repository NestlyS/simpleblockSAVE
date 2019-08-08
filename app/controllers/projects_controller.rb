class ProjectsController < ApplicationController
  def create
    #render plain: params.inspect
    @project = Project.new(project_params)
    if @project.save
        redirect_to root_path
    end
end
  def destroy
        @project = Project.find(params[:id])
        @project.destroy
        redirect_to root_path
    end
    private
        def project_params
            params.require(:project).permit(:title)
        end
end
