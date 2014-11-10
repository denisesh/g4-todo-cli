class TodoApp < CommandLineApp

  def real_puts message = " "
    $stdout.puts message
  end

  def run
    puts "Welcome"
    puts "'list' to list projects"
    puts "'create' to create a new project"
    puts "'edit' to edit a project"
  end

  input = gets.chomp
  puts "Welcome"

  def run
    while input != "quit"
      quit = gets.chomp
      # if input == "list"
      # puts "i'm inside list"
      # end
    end
    puts "Type one of the commands"
    input = gets.chomp
  end




end
