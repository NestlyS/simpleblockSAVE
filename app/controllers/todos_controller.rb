class TodosController < ApplicationController
    def create
      @project = Project.find(params.dig(:todo, :project_id))
      @todo = @project.todos.new(todo_params)
      if @todo.save
          redirect_to welcome_index_path
      else
          render 'welcome/index'
      end
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
        redirect_to welcome_index_path
    end
    private
        def todo_params
            params.require(:todo).permit(:text, false, :project_id)
        end
        def notTodo_params
            params.require(:todo).permit(:isCompleted)
        end
end
