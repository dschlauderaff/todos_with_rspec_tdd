module Features
  def create_todo(todo_title)
    click_on "Add a new todo"
    fill_in 'todo[title]', with: todo_title
    click_on "Create Todo"
  end

  def display_todo(todo_title)
    have_css '.todos li', text: todo_title
  end

  def display_completed_todo(todo_title)
    have_css '.todos li.completed', text: todo_title
  end
end