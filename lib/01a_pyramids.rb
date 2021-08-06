def ask_ramsesII
  puts "Dis moi Ramsès II, tu veux une pyramide à combien d'étages ?"
  puts "Abuse pas trop sur la hauteur Ramsou."
  print "> "

  while true do
    nb_floors = gets.chomp.to_s

    if nb_floors.to_i > 0 && nb_floors.to_i <=25 then # seule réponse valide
      puts "Voilà ta pyramide l'ami:"
      return nb_floors.to_i

    elsif nb_floors.to_i > 25 # si supérieur à 25
      puts "C'est trop grand poto, 25 étages max pour wam."
      print "> "

    elsif nb_floors == "0" || nb_floors.to_i <= -1 # si inférieur ou égal à 0
      puts "Tu veux une non-pyramide ? Chelou mec !"
      print "> "

    elsif nb_floors.empty? # si gets est vide
      puts "Réponds moi gros."
      print "> "

    else # autres cas
      puts "C'est pas un nombre mec."
      print "> "
    end
  end

end

def build_pyramid(nb_floors)
  nb_floors.times do |i|
    print " " * (nb_floors - i -1)
    puts "#" * (i * 2 + 1)
  end
end

def perform
  nb_floors = ask_ramsesII
  build_pyramid(nb_floors)
end

perform