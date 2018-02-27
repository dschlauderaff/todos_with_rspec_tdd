class CompletionsController < ApplicationController
  def create
    #finds the current user's todo and uses #touch to update the timestamp from nil to Time.now
    todo.touch :completed_at
    redirect_to todos_path
  end

  private
  def todo
    current_user.todos.find(params[:todo_id])
  end
end