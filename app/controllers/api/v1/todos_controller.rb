module Api
    module V1
        class TodosController < ApiController
            before_action :require_login

            def index
                render json: Todo.all
            end
        
            def create
                todo = Todo.create!(todo_params)
                render json: todo
            end
        
            def destroy
                Todo.destroy(params[:id])
            end
        
            def update
                todo = Todo.find(params[:id])
                todo.update_attributes(todo_params)
                render json: todo
            end
        
            def done_task
                todo = Todo.find(params[:todo_id])
                todo.done_toggle
                render json: todo
            end
        
            private
        
            def todo_params
                params.require(:todo).permit(:id, :description, :done)
            end
            
        end
    end
end

