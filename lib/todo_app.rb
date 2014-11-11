class TodoApp < CommandLineApp
  def initialize(input, output)
    @input = input
    @output = output
    @projects = []
  end

  def real_puts message = ""
    $stdout.puts message
  end

  def run
    puts "Welcome"
    puts "'list' to list projects"
    puts "'create' to create a new project"
    puts "'edit' to edit a project"


    user_input = gets.chomp.downcase

    while user_input != 'quit'
      if user_input == "list"
        list
      elsif user_input == "create"
        create
      elsif user_input == "edit"
        edit
      elsif user_input == "delete"
        delete
      end

    user_input = gets.chomp
    end
  end

  def delete
    puts "Please enter the project name to delete:\n"
    delete_project = gets.chomp
    @projects.delete(delete_project)
    #@projects[@projects.index(delete_project)]=nil
  end

  def edit
    puts "Please enter the project name to edit:\n"
    edit_project = gets.chomp
    #something about calling create goes awry
    puts "Please enter the new project name:\n"
    new_name = gets.chomp
    @projects[@projects.index(edit_project)]=new_name
  end

  def create
    puts "Please enter the new project name:\n"
    create_project = gets.chomp
    @projects << create_project
  end

  def list
    if @projects.empty?
      puts "Projects:\n  none"
    else
      puts "Projects:\n  #{@projects.join(",")} "
    end
  end
end
