module CommonMethods
  def validate(options, field)
    unless options.include? field
      field = ask("Sorry that is not an option. Please select one of the following: #{options.join(", ")}")
    end
    field
  end

  def ask(message)
    puts message
    gets.chomp.downcase
  end
end
