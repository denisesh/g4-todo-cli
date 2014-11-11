class TodoApp < CommandLineApp
  def initialize(input, output)
    @input = input
    @output = output
  end
  def real_puts message = ""
    $stdout.puts message
  end

  def run
    
    puts "Welcome"
    puts "'list' to list projects"
    puts "'create' to create a new project"
    puts "'edit' to edit a project"

    user_input = gets.chomp

    projects = []

    while user_input != "quit"
      if user_input == "create"
        puts "Please enter the new project name:"
        @projects << gets.chomp
      elsif user_input == "edit"
        puts "Please enter the project name to edit:"
        project_to_edit = gets.chomp
        puts "Please enter the new project name:"
        @projects[@projects.index(project_to_edit)] = gets.chomp
      elsif gets == "list"
        list
         #puts "Projects: \n none"
      #else
         #@projects.join(" ")
      end
      user_input = gets.chomp
    end

    def list
      if projects.length == 0
        puts "Projects:\n  none"
      else
        puts projects.join(" ")
      end
    end

  # def display_projects
  #   if @projects == []
  #     "none"
  #   else
  #     @projects.join(" ")
  #   end
  #end
#\n #{display_projects}
  end
end
