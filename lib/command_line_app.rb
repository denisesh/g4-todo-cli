class CommandLineApp
  attr_reader :input, :output

  def puts(message)
    output.puts(message)
  end

  def gets
    input.gets
  end

  def initialize(input, output)
    @input = input
    @output = output
  end
end

#   def get_input
#     puts "What would you like to do?"
#     gets.to_i
#   end
#
#   input = get_input
#   def run
#     puts "Welcome"
#     while input != "quit"
#       puts "i don't do anything yet"
#     end
#     input = get_input
#   end
# end
