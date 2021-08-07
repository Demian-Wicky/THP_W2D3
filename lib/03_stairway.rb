def start_text
  puts
  puts "BIENVENUE DANS DICEY STAIRWAYS"
  puts
end

###########################################################

def throw_dice
  values_emoji = ["1️⃣","2️⃣","3️⃣","4️⃣","5️⃣","6️⃣"]
  dice_value = rand(1..6)

  puts "┌──────┬───────────────────┐"
  puts "│ 🎲#{values_emoji[dice_value-1]}  │ Tu as fait un #{dice_value} ! │"
  puts "└──────┴───────────────────┘"

  return dice_value
end

###########################################################

def move(dice_value)

  if dice_value == 5 || dice_value == 6 # si le dé fait 5 ou 6
    puts "Tu montes une marche 🔼"
    step = 1
    return step

  elsif dice_value == 1 # si le dé fait 1
    puts "Tu descend d'une marche 🔽"
    step = -1
    return step

  else # si le dé fait 2, 3, ou 4 
    puts "Il ne se passe rien ⏸️"
    step = 0
    return step
  end

end

###########################################################


def game
  start_text
   gets
  position = 1
  turns_counter = 0
    while position != 10
      dice_value = throw_dice
      step = move(dice_value)
      position = position + step
      if position <= 0                      # pour ne pas pouvoir aller au sous-sol
        position = 1
        puts "TU NE PEUX PAS DESCENDRE PLUS BAS !"
      end
      puts "TU ES SUR LA MARCHE #{position}"
      turns_counter += 1                    # compteur de tours
       gets
    end

    puts "ⓘ  Il a fallu #{turns_counter} tours pour monter les escaliers." # affichage final compteur de tours

end



game



# saved_values = []
# def saved_values
#   10.times do
#     saved_values << dice
#   end
#   return saved_values
# end

# def average
#   puts "#{saved_values.sum(0.0) / saved_values.size}"
# end