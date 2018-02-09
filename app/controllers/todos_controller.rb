class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = current_user.todos
  end

  def new
    @todo = Todo.new
  end

  def create
    current_user.todos.create(todo_params)
    redirect_to todos_path
    # item = Todo.new(todo_params)
    # item.email = session[:current_email]

    # if item.save
    #   redirect_to todos_path
    # end
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end