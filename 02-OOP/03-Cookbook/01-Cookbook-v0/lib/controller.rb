require_relative 'cookbook'

class Controller
  def initialize
    @ui = Ui.new
    @cookbook = Cookbook.new
  end

  def display_recipes
    recipes = @ui.tasks
    @interface.display_tasks(tasks)
  end

  def add_recipe
    description = @interface.ask_user_for_task_description
    task = Task.new(description)
    @repository.add_task(task)
  end

  def delete_recipe
    index = @interface.ask_user_for_task_id_to_mask_as_done
    task = @repository.find_task(index)
    task.mark_as_done
  end
end

class Controller
  def initialize(file)
    # Here you should instantiate the Cookbook model with the file
  end

  # TODO: Implement the methods to retrieve, add, and delete recipes through the model
end
