def ask_first_name
  puts "Quel est ton prénom ?"
  print "> "
  first_name = gets.chomp
  return first_name
end

def ask_last_name
  puts "Quel est ton nom de famille ?"
  print "> "
  last_name = gets.chomp
  return last_name
end

def say_hello(first_name, last_name)
  puts "Bonjour #{first_name} #{last_name} !"
end

def perform
  first_name = ask_first_name
  last_name = ask_last_name
  say_hello(first_name, last_name)
end

perform