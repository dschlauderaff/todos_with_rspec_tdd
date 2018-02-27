class Todo < ApplicationRecord
  def completed?
    completed_at?
  end

  def complete!
    touch :completed_at
  end

  def set_incomplete
    update_attribute(:completed_at, nil)
  end
end
