class TodosController < ApplicationController
    def index
      @projects = Project.all
      @projectsCollect = @projects.collect
     end
    def create
      @project = Project.find(params.dig(:todo, :project_id))
      @todo = @project.todos.new(todo_params)
      @todo.save
          redirect_to root_path
  end
    def update
      #render plain: params.inspect
      #  @project_ = Project.find(params[:project_id])
        @todo = Todo.find(params[:id])
        @todo.update(notTodo_params)
    end
    def destroy
        @todo = Todo.find(params[:id])
        @todo.destroy
        redirect_to root_path
    end
    private
        def todo_params
            params.require(:todo).permit(:text, false, :project_id)
        end
        def notTodo_params
            params.require(:todo).permit(:isCompleted)
        end
end
