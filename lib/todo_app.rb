class TodoApp < CommandLineApp

  def real_puts message = " "
    $stdout.puts message
  end

  def run
    puts "Welcome"
    puts "'list' to list projects"
    puts "'create' to create a new project"
    puts "'edit' to edit a project"


    user_input = gets.chomp
    puts "Welcome"

    while user_input != "quit"
      if user_input == "list"
      # if user_input == "list"
      # puts "i'm inside list"
      # end
      end
    end
    puts "Type one of the commands"
    user_input = gets.chomp
  end
end
