def signup

  puts "Saisissez votre mot de passe."
  print "> "
  password = gets.chomp.to_s
end

def login(password)

  puts "Saisis ton mot de passe."
  print "> "
  input = gets.chomp.to_s

  if input == password


  else
      puts "Mot de passe incorrect !"
      login(password)
  end

end

def welcomescreen
  puts "Bienvenue votre espace secret."
puts
puts"                    .-."
puts"    .---`---.     |(@ @)"
puts" _/`oOoOoOoOo`\\_  \\ \\-/    <- alien moche"
puts"'.-=-=-=-=-=-=-.'  \\/ \\"
puts"  '-=.=-.-=.=-'     \\ /\\"
puts"     ^  ^  ^        _H_ \\"
puts

  
end

##########################################################

def perform
  password = signup
  login(password)
  welcomescreen
end


perform